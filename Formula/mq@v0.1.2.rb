class Mq@012 < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.1.2/mq-x86_64-apple-darwin"
    sha256 "7b357b942b4a0c15e98f404ce5d06c58ee05bfe82ed1cfc3cc786b3f05e7b8fd"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.1.2/mq-aarch64-apple-darwin"
    sha256 "edd4c0acdad9a92dd9c55cb1f7609efb1fde05c973871f4ec321ab280e716ddf"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.1.2/mq-x86_64-unknown-linux-gnu"
    sha256 "cff459f24c1fb49855c5d11bb1812871d0a0f9f60d0d9e6edeee1da91df0b773"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.1.2/mq-aarch64-unknown-linux-gnu"
    sha256 "9b520974265dcd2f261220e3de9eb58988f3b31e38ad90f85b2c7ba0f43420a1"
  end

  version "0.1.2"
  license "MIT"

  def install
    case
    when OS.mac? && Hardware::CPU.intel?
      bin.install "mq-x86_64-apple-darwin" => "mq"
    when OS.mac? && Hardware::CPU.arm?
      bin.install "mq-aarch64-apple-darwin" => "mq"
    when OS.linux? && Hardware::CPU.intel?
      bin.install "mq-x86_64-unknown-linux-gnu" => "mq"
    when OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      bin.install "mq-aarch64-unknown-linux-gnu" => "mq"
    end
  end
end
