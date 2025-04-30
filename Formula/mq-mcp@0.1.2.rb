class MqMcp@012 < Formula
  desc "mq Model Context Protocol (MCP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.1.2/mq-mcp-x86_64-apple-darwin"
    sha256 "eff7f2fa04e68ef16387ed18ab5775ba2e73c9a819f5898463c813a3c50a340c"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.1.2/mq-mcp-aarch64-apple-darwin"
    sha256 "58b807a3ea6c67d4d9628a1084a5baf3a7de001f0763941d0e47537eb4ed8906"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.1.2/mq-mcp-x86_64-unknown-linux-gnu"
    sha256 "683f38e0c7431f8e95782c0b56bc3119ca63a02c2f06877580dfd9b94da1b283"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.1.2/mq-mcp-aarch64-unknown-linux-gnu"
    sha256 "5a30602fd0a5ca75bc9cc7a90fb67c26075a39f8fabbd51f5d5b02198694d05a"
  end

  version "0.1.2"
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
