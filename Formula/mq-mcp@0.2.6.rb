class MqMcp < Formula
  desc "mq Model Context Protocol (MCP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.6/mq-mcp-x86_64-apple-darwin"
    sha256 "bc6f88f9bb730f37a25d2b2581b221e8eac70faa93a58c4db5cf2ec023a56aed"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.6/mq-mcp-aarch64-apple-darwin"
    sha256 "ef643aadbaaf4f8805d0a402970bd82f90e24b8ecf7fe9de8082ae813e67547c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.6/mq-mcp-x86_64-unknown-linux-gnu"
    sha256 "7d079db3bda2062d21d57b8656a09907304dd995bf3540faa3b40af32d26cb66"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.6/mq-mcp-aarch64-unknown-linux-gnu"
    sha256 "17529417167ebf4c5de974c6b639e868ed8115930884ae88b25d0790b0898452"
  end

  version "0.2.6"
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
