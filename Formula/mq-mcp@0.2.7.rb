class MqMcp < Formula
  desc "mq Model Context Protocol (MCP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.7/mq-mcp-x86_64-apple-darwin"
    sha256 "7199fe67eba75c2c786a2d8fb41d8e7c36af95b833557a78594901ef052205fc"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.7/mq-mcp-aarch64-apple-darwin"
    sha256 "7b70e7e7f09789723c346f8cf496f9db68223b0d3bc2f5ce7bd3371c922dd467"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.7/mq-mcp-x86_64-unknown-linux-gnu"
    sha256 "40c042dbf93e6a4d09237f754f0b1821f964fd4f6027172c917ae6191c61cf6c"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.7/mq-mcp-aarch64-unknown-linux-gnu"
    sha256 "9ebd9c4ea86b16d58e43815fc39ac17e9c7af4465958846600a9b41f1465820a"
  end

  version "0.2.7"
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
