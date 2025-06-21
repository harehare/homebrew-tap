class MqMcp < Formula
  desc "mq Model Context Protocol (MCP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.5/mq-mcp-x86_64-apple-darwin"
    sha256 "ad6d94f2caa1682e5cf01331d7172a9e0f7ab9c68a778915dd237138787264df"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.5/mq-mcp-aarch64-apple-darwin"
    sha256 "a325dfb24faee242cc7a6d0943ca0c7403e5f16032bb1bde680244d4e3f99688"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.5/mq-mcp-x86_64-unknown-linux-gnu"
    sha256 "c6ac45d5a05bc57fa68e87ceee07c7f34dcb8387badff1f267ec024fc9a09752"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.5/mq-mcp-aarch64-unknown-linux-gnu"
    sha256 "e64320d98f0bba0b5dbba6f3503f2bcbfbc38ec50c3097bad87957a933c472a2"
  end

  version "0.2.5"
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
