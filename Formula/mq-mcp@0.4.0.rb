class MqMcp < Formula
  desc "mq Model Context Protocol (MCP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.4.0/mq-mcp-x86_64-apple-darwin"
    sha256 "07f3aab976fdb5ba8897fd9c17f0805d696ab5c1dc62a9fd9b355180543836ce"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.4.0/mq-mcp-aarch64-apple-darwin"
    sha256 "5632f0ef8b80bc142ab576bca16c96306f32c2bcaabbf80e44f74a6ab3941f6e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.4.0/mq-mcp-x86_64-unknown-linux-gnu"
    sha256 "71b9fd9668bab246c0ecff8078ac9038ed79caeb38986b2e754f05a268f43405"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.4.0/mq-mcp-aarch64-unknown-linux-gnu"
    sha256 "7c67a07f70a10777e91ff7fd2c029a0a6e55e1e37e57e1e40dcaf9071b727ea2"
  end

  version "0.4.0"
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
