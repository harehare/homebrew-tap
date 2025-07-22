class MqMcp < Formula
  desc "mq Model Context Protocol (MCP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.13/mq-mcp-x86_64-apple-darwin"
    sha256 "eb2ba592f9bffa0bc558a7dfb2cd70e577ca369af2f1a56424788c836baa6330"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.13/mq-mcp-aarch64-apple-darwin"
    sha256 "0f6619fabdd935d5090becadd7c95ece4aac99ee0747973678955437ae80bb09"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.13/mq-mcp-x86_64-unknown-linux-gnu"
    sha256 "2be075bfc61ccedf6c3dc188b650862b0cdfa1dd4ed5bfb8a7458e30028809be"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.13/mq-mcp-aarch64-unknown-linux-gnu"
    sha256 "589489e988d0bab711bbeb752a4af1b2eb5282aa9c1e441db2f43e8fd01d6954"
  end

  version "0.2.13"
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
