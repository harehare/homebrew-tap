class MqMcp < Formula
  desc "mq Model Context Protocol (MCP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.9/mq-mcp-x86_64-apple-darwin"
    sha256 "be7ebaea4b963e68ffcd44be92d85354962a7111750691dec918b853a55fdd61"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.9/mq-mcp-aarch64-apple-darwin"
    sha256 "5f00011549bdc734c752c72da0e48b74ad80a778698de41db3e0d9981d448131"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.9/mq-mcp-x86_64-unknown-linux-gnu"
    sha256 "9e642b6c8338e01781d4a4affc6b7e7540ce14e83cc345c2c91f0d0a6c7ebc52"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.9/mq-mcp-aarch64-unknown-linux-gnu"
    sha256 "b86d07f44bd044f478b72c899053588f287764d91ae35fc11328df139a8bae07"
  end

  version "0.2.9"
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
