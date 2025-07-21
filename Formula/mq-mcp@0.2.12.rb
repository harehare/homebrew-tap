class MqMcp < Formula
  desc "mq Model Context Protocol (MCP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.12/mq-mcp-x86_64-apple-darwin"
    sha256 "7d8c08a75d0dab7b82aafd0715f36a74d60d52f126cc897e55db0cfe23f327b7"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.12/mq-mcp-aarch64-apple-darwin"
    sha256 "326893ced3408bb9126dd95e83908f88723219228b1f4ab93ac5be0396cfb8dd"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.12/mq-mcp-x86_64-unknown-linux-gnu"
    sha256 "3561f40f4c6c18e837172b875abcbbd65e47c67c2107e5ab33cbe63aabb5e977"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.12/mq-mcp-aarch64-unknown-linux-gnu"
    sha256 "4ca33a152e182945af71e80fced581502d5b3bc95f3ffebbe6fe9e2e6d9b3296"
  end

  version "0.2.12"
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
