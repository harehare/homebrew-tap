class Mqcr < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.11/mqcr-x86_64-apple-darwin"
    sha256 "8437211ba0836955e639856105337d6948e9ff8a001fca8f4ba583d354450a8a"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.11/mqcr-aarch64-apple-darwin"
    sha256 "e7c1de73c6eddbce52d28978032416aa96c651c4c24900000da816c0d3409fca"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.11/mqcr-x86_64-unknown-linux-gnu"
    sha256 "d37918bd84bfc89cdd1358f44d0cd0fe1a560e08edbf40a655ca872783e557bc"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.11/mqcr-aarch64-unknown-linux-gnu"
    sha256 "4d6f6b55ace7df8b797417116cebdbe60a2b2fe1efeba218c98ac61bd3008b90"
  end

  version "0.2.11"
  license "MIT"

  def install
    case
    when OS.mac? && Hardware::CPU.intel?
      bin.install "mqcr-x86_64-apple-darwin" => "mqcr"
    when OS.mac? && Hardware::CPU.arm?
      bin.install "mqcr-aarch64-apple-darwin" => "mqcr"
    when OS.linux? && Hardware::CPU.intel?
      bin.install "mqcr-x86_64-unknown-linux-gnu" => "mqcr"
    when OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      bin.install "mqcr-aarch64-unknown-linux-gnu" => "mqcr"
    end
  end
end
