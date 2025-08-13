class MqMcp < Formula
  desc "mq Model Context Protocol (MCP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.17/mq-mcp-x86_64-apple-darwin"
    sha256 "d1e017d298d323d9609b41e3252f3890e0d58415c01356a42bf4b9150b7fe0a8"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.17/mq-mcp-aarch64-apple-darwin"
    sha256 "7309bbb2eabe876f104ad03cc8c9bf85d0775325bfef2381cdc43d87215af604"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.17/mq-mcp-x86_64-unknown-linux-gnu"
    sha256 "7ec046d5e87c65d5992f5d86fd21f0b373cbb7a3613e2b7039835cb86309a3ff"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.17/mq-mcp-aarch64-unknown-linux-gnu"
    sha256 "369156fed0b7a1ec95c47ab2609cd18dee385ba397dadab81216350e99153c7b"
  end

  version "0.2.17"
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
