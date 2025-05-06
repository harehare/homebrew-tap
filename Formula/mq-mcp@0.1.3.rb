class MqMcp@013 < Formula
  desc "mq Model Context Protocol (MCP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.1.3/mq-mcp-x86_64-apple-darwin"
    sha256 "0f665d467e7312b202d57e4a4f8790423ba6874e6121645f8f51bc2a09c91069"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.1.3/mq-mcp-aarch64-apple-darwin"
    sha256 "ba892382d7e2c8e2bd37281019369ee76c38d8dc682cd7fa785b756b728cc57f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.1.3/mq-mcp-x86_64-unknown-linux-gnu"
    sha256 "79cb2de278fa6aead54348cda7c6e55f3abc40a11261d1a131c6dba124ae6173"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.1.3/mq-mcp-aarch64-unknown-linux-gnu"
    sha256 "9d5e1ca8d1da1036cff60138917e3b0e11957e64401cb140e4d4d630c273e843"
  end

  version "0.1.3"
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
