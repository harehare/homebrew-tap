class MqMcp < Formula
  desc "mq Model Context Protocol (MCP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.0/mq-mcp-x86_64-apple-darwin"
    sha256 "a69b3c0795bcda1cc18d42aff093ea292dbee227e1a83f8a09b977eec92d7c8c"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.5.0/mq-mcp-aarch64-apple-darwin"
    sha256 "f91e0dec0bf17f844cec864e04d79de9f6662e03a06bd50692dcc4907f43272b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.0/mq-mcp-x86_64-unknown-linux-gnu"
    sha256 "81a64698329a18e0d0c1ead73a35a566027255f8b8ab5054704866587ff41378"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.5.0/mq-mcp-aarch64-unknown-linux-gnu"
    sha256 "f7dda2fe8ec87a6a82349840a9e601e949746f032671cf881f6a757f8d4b284b"
  end

  version "0.5.0"
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
