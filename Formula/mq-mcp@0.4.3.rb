class MqMcp < Formula
  desc "mq Model Context Protocol (MCP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.4.3/mq-mcp-x86_64-apple-darwin"
    sha256 "a0952e66ab2e4a73bc157101f7a325a655cf03a0ef279ac3e27f5915b68ba5f7"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.4.3/mq-mcp-aarch64-apple-darwin"
    sha256 "b4a63940b3fbe40500264adf1af4016023e9dc6e4b166ea82bbfeb08f6e0b47c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.4.3/mq-mcp-x86_64-unknown-linux-gnu"
    sha256 "8a99ccac3aa7717cc7d085e0524dcd682a029e8cc15e62823436f3a97a288b2d"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.4.3/mq-mcp-aarch64-unknown-linux-gnu"
    sha256 "9dbe3e238b84e15daf738f87261089dfd120afc13cc1bfde2df8d2184d50c2ba"
  end

  version "0.4.3"
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
