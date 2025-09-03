class MqMcp < Formula
  desc "mq Model Context Protocol (MCP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.21/mq-mcp-x86_64-apple-darwin"
    sha256 "0af0d3148e83ef82c6ce0fb93d87fd8cb2fda999137ae7daab69cd299ea1c3c9"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.21/mq-mcp-aarch64-apple-darwin"
    sha256 "47fcbb6d2f1f521e575f547f989cfe608552c3fcc3710138f11f8c9a97e90d19"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.21/mq-mcp-x86_64-unknown-linux-gnu"
    sha256 "9c665d0c18ac67a75614c9d33e08ee1185102142de51fe1942214b2d9f7fb803"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.21/mq-mcp-aarch64-unknown-linux-gnu"
    sha256 "38ff2aebfa03fcc52a5c7adc5cb79ec1f22ee4ec280d7a4e76168b18581773f4"
  end

  version "0.2.21"
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
