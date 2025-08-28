class MqMcp < Formula
  desc "mq Model Context Protocol (MCP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.20/mq-mcp-x86_64-apple-darwin"
    sha256 "0439c3538a9d60e18f67d15528da07396ddc403ff15ac39647be777e65a7e0a1"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.20/mq-mcp-aarch64-apple-darwin"
    sha256 "47ba36c4b658509e95bd23fa96bf082ed7ea8d019856877484d030a8f8564650"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.20/mq-mcp-x86_64-unknown-linux-gnu"
    sha256 "a6a6bec1b7495a527d2dbfc188366ededd210f020b8def5aa7fb5a1655a735f8"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.20/mq-mcp-aarch64-unknown-linux-gnu"
    sha256 "c5a44513478c121b80a32df4e005c9626ad5c678234fe44c1fc63fe73ae4d0ba"
  end

  version "0.2.20"
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
