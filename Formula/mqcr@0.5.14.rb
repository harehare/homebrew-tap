class Mqcr < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.0/mqcr-x86_64-apple-darwin"
    sha256 "c59036b4205ec80686f0c036f2fd48a3b49d6c997c57bd62bcd1b2bdc0930d5d"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.5.14/mqcr-aarch64-apple-darwin"
    sha256 "ba8128070eee5a7b88589d5f0b7bc8f8f84a56a41edb25e6a0f7aa8414dccd67"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.14/mqcr-x86_64-unknown-linux-gnu"
    sha256 "a44bb91492b58c8f0610cf4938618c742774a03d589c7542f32433b175f232b4"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.5.14/mqcr-aarch64-unknown-linux-gnu"
    sha256 "1ad6d7a634983a656688fc861966fe0b2178d1a553bd1c342c45cff1d1596d57"
  end

  version "0.5.14"
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
