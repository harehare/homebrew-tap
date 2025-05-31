class MqMcp < Formula
  desc "mq Model Context Protocol (MCP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.0/mq-mcp-x86_64-apple-darwin"
    sha256 "197356ddeacd2a6c65c3f29c830b702d4345291ebea2eec3e68a781c9a366fd6"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.0/mq-mcp-aarch64-apple-darwin"
    sha256 "23ad56d942e24b77e36c4fff64a784dcae2aa98e9deafff68e3293a4f5d92b16"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.0/mq-mcp-x86_64-unknown-linux-gnu"
    sha256 "3c193c037bef14728d4213e84f68ec0fb184d2ef910f64c2df062901faaf93ae"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.0/mq-mcp-aarch64-unknown-linux-gnu"
    sha256 "ecff19c1dc3468d1af614536ab245596564310c57a0bab45c47c1647cd3baa6e"
  end

  version "0.2.0"
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
