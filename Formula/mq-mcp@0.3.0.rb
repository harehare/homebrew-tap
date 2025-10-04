class MqMcp < Formula
  desc "mq Model Context Protocol (MCP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.3.0/mq-mcp-x86_64-apple-darwin"
    sha256 "43138140d725f2ea23e837813fa44c7e8b1a4e689f8d170eec3c19c5a3c56046"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.3.0/mq-mcp-aarch64-apple-darwin"
    sha256 "942a1ce136c918ea367acc0f567ca15ce0f10ff16ff0a60cf72ce89f78550408"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.3.0/mq-mcp-x86_64-unknown-linux-gnu"
    sha256 "112b3e9a25f90c81c218abf9e59357224631d5436c654f59f97e7054b97fd0c7"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.3.0/mq-mcp-aarch64-unknown-linux-gnu"
    sha256 "b31793cd139b7fb2c40e9a217aaefdb29a802fecae865eeb5159b2d174de90bb"
  end

  version "0.3.0"
  license "MIT"

  def install
    case
    when OS.mac? && Hardware::CPU.intel?
      bin.install "mq-mcp-x86_64-apple-darwin" => "mq-mcp"
    when OS.mac? && Hardware::CPU.arm?
      bin.install "mq-mcp-aarch64-apple-darwin" => "mq-mcp"
    when OS.linux? && Hardware::CPU.intel?
      bin.install "mq-mcp-x86_64-unknown-linux-gnu" => "mq-mcp"
    when OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      bin.install "mq-mcp-aarch64-unknown-linux-gnu" => "mq-mcp"
    end
  end
end
