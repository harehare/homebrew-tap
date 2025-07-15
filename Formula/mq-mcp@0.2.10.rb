class MqMcp < Formula
  desc "mq Model Context Protocol (MCP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.10/mq-mcp-x86_64-apple-darwin"
    sha256 "f9057cbb90b69498671d9d02e634a6e331d4560f609bf5bc70d611458791f707"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.10/mq-mcp-aarch64-apple-darwin"
    sha256 "6bd1a45fce84da46190772d9ad29f662e8b9a5f8d43a9160b164a47127e97f42"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.10/mq-mcp-x86_64-unknown-linux-gnu"
    sha256 "0550974286c4a55fa991009f74ed09694f05fdc560a0d4fe8fb2154d038212d5"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.10/mq-mcp-aarch64-unknown-linux-gnu"
    sha256 "96b36eee3f2084730d403fdcc3af92d4ffde9fcb9ad7c64a18c59106f6f68526"
  end

  version "0.2.10"
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
