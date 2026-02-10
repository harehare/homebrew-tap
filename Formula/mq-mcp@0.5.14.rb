class MqMcp < Formula
  desc "mq Model Context Protocol (MCP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.0/mq-mcp-x86_64-apple-darwin"
    sha256 "a69b3c0795bcda1cc18d42aff093ea292dbee227e1a83f8a09b977eec92d7c8c"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.5.1/mq-mcp-aarch64-apple-darwin"
    sha256 "2853569c02d2c98a0db10a5b90250ec2813bb60b9b97cf5aa6379070cf1b39d8"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.1/mq-mcp-x86_64-unknown-linux-gnu"
    sha256 "9d39b20f7aec6e22781ca3896112ff7ee735e5ab6aa85b845ed4118941533fae"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.5.1/mq-mcp-aarch64-unknown-linux-gnu"
    sha256 "c991033c5d9b76dccbae39f4eb7b86d03c63bacc692655e8309ac6c3599a55b7"
  end

  version "0.5.14"
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
