#!/usr/bin/env ruby
# frozen_string_literal: true

# Script to update Homebrew formulas with new SHA256 hashes
# Usage: ruby update_homebrew_formulas.rb <version> <sha_content_file>
# Example: ruby update_homebrew_formulas.rb 0.1.6 sha256_content.txt

require 'fileutils'
require 'tempfile'

class HomebrewFormulaUpdater
  FORMULA_DIR = File.join(__dir__, 'Formula')
  FORMULAS = [
    { name: 'mq', file: 'mq.rb', class_name: 'Mq' },
    { name: 'mq-lsp', file: 'mq-lsp.rb', class_name: 'MqLsp' },
    { name: 'mq-mcp', file: 'mq-mcp.rb', class_name: 'MqMcp' },
    { name: 'mqcr', file: 'mqcr.rb', class_name: 'MqCrawler' }
  ].freeze

  PLATFORMS = [
    { arch: 'x86_64-apple-darwin', condition: 'OS.mac? && Hardware::CPU.intel?' },
    { arch: 'aarch64-apple-darwin', condition: 'OS.mac? && Hardware::CPU.arm?' },
    { arch: 'x86_64-unknown-linux-gnu', condition: 'OS.linux? && Hardware::CPU.intel?' },
    { arch: 'aarch64-unknown-linux-gnu', condition: 'OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?' },
    { arch: 'x86_64-pc-windows-msvc', condition: 'OS.windows? && Hardware::CPU.intel?', extension: '.exe' }
  ].freeze

  def initialize(version, sha_content)
    @version = version
    @hashes = parse_sha_content(sha_content)
  end

  def update_all_formulas
    success = true

    FORMULAS.each do |formula|
      formula_path = File.join(FORMULA_DIR, formula[:file])
      if File.exist?(formula_path)
        success &= update_formula(formula, formula_path)
        create_versioned_formula(formula[:file], formula_path)
      else
        puts "Warning: Formula file not found: #{formula_path}"
        success = false
      end
    end

    success
  end

  private

  def parse_sha_content(content)
    hashes = {}

    content.each_line do |line|
      next if line.strip.empty?

      sha, path = line.strip.split(/\s+/, 2)
      next unless sha && path

      # Handle paths like "mq-aarch64-apple-darwin/mq-aarch64-apple-darwin"
      if path =~ %r{([^/]+)/([^/]+)$}
        dir = $1
        file = $2

        # Extract binary name and platform, handle Windows .exe extension
        if file =~ /^(mq(?:-lsp|-mcp|cr)?)-(.+?)(?:\.exe)?$/
          binary = $1
          platform = $2

          hashes[binary] ||= {}
          hashes[binary][platform] = sha
          puts "Found hash for #{binary} on #{platform}: #{sha}"
        end
      end
    end

    hashes
  end

  def update_formula(formula, formula_path)
    puts "Updating formula: #{formula[:name]} (#{formula_path})"
    content = File.read(formula_path)
    original_content = content.dup

    # Update version
    content.gsub!(/version\s+"[\d\.]+?"/, "version \"#{@version}\"")

    # Update URLs and SHA256 for each platform section
    PLATFORMS.each do |platform|
      arch = platform[:arch]
      condition = platform[:condition]
      binary = formula[:name]
      extension = platform[:extension] || ''

      # Skip if no hash for this binary/platform
      next unless @hashes.dig(binary, arch)

      # Prepare patterns
      url_pattern = /url\s+"https:\/\/github\.com\/harehare\/mq\/releases\/download\/v[\d\.]+\/#{binary}-#{arch}(?:\.exe)?"/
      sha_pattern = /sha256\s+"[a-f0-9]+"/

      # Prepare replacements
      url_replacement = "url \"https://github.com/harehare/mq/releases/download/v#{@version}/#{binary}-#{arch}#{extension}\""
      sha_replacement = "sha256 \"#{@hashes[binary][arch]}\""

      # Find the platform section in the formula and update it
      if content.include?(condition)
        # Process the section containing the condition
        section_pattern = if content =~ /if #{Regexp.escape(condition)}/
                            /if #{Regexp.escape(condition)}.*?(?:elsif|else|end)/m
                          elsif content =~ /elsif #{Regexp.escape(condition)}/
                            /elsif #{Regexp.escape(condition)}.*?(?:elsif|else|end)/m
                          end

        if section_pattern && (section_match = content.match(section_pattern))
          section = section_match[0]
          updated_section = section.gsub(url_pattern, url_replacement).gsub(sha_pattern, sha_replacement)
          content.sub!(section, updated_section)
        end
      end
    end

    # Write back if changed
    if content != original_content
      puts "Changes detected, writing updated formula: #{formula_path}"
      File.write(formula_path, content)
      true
    else
      puts "No changes needed for #{formula_path}"
      false
    end
  end

  def create_versioned_formula(formula_file, formula_path)
    versioned_name = if formula_file.include?('@')
                       # Already versioned
                       return
                     else
                       formula_file.gsub(/\.rb$/, "@#{@version}.rb")
                     end

    versioned_path = File.join(FORMULA_DIR, versioned_name)

    # Skip if the versioned formula already exists
    if File.exist?(versioned_path)
      puts "Versioned formula already exists: #{versioned_path}"
      return
    end

    puts "Creating versioned formula: #{versioned_path}"
    FileUtils.cp(formula_path, versioned_path)
  end
end

if __FILE__ == $PROGRAM_NAME
  if ARGV.size < 2
    puts "Usage: ruby #{$PROGRAM_NAME} <version> <sha_content_file>"
    puts "Example: ruby #{$PROGRAM_NAME} 0.1.6 sha256_content.txt"
    exit 1
  end

  version = ARGV[0]
  sha_content_file = ARGV[1]

  unless File.exist?(sha_content_file)
    puts "Error: SHA256 content file '#{sha_content_file}' not found."
    exit 1
  end

  sha_content = File.read(sha_content_file)
  updater = HomebrewFormulaUpdater.new(version, sha_content)

  if updater.update_all_formulas
    puts "Formula updates completed successfully."
    exit 0
  else
    puts "Formula updates completed with warnings or errors."
    exit 1
  end
end
