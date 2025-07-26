class MqMcp < Formula
  desc "mq Model Context Protocol (MCP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.14/mq-mcp-x86_64-apple-darwin"
    sha256 "27f71ca433749e08cd75df2fdd9fe2e54182120ee51c4e9c48347e0dfe05b5c7"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.14/mq-mcp-aarch64-apple-darwin"
    sha256 "a37590c4e00512dfc1b5de4877b3d91034bcbd7d3bda8359b16c3dca3abfa850"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.14/mq-mcp-x86_64-unknown-linux-gnu"
    sha256 "2148addc2e1c991f276625d315afd87c9368c95969443e893ec02bc9467c772d"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.14/mq-mcp-aarch64-unknown-linux-gnu"
    sha256 "ce40833b0c421f1dbffc7b7b109fee019d53d6be2ce4eff0f0ed282627ab3cba"
  end

  version "0.2.14"
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
