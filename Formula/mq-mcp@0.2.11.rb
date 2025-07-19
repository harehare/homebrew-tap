class MqMcp < Formula
  desc "mq Model Context Protocol (MCP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.11/mq-mcp-x86_64-apple-darwin"
    sha256 "6d83b7c3fb50dfe9d7a761fe321add5cc5c5e533e427ff82e3933773d1ff1d36"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.11/mq-mcp-aarch64-apple-darwin"
    sha256 "86500dac6471bacdb8450ddd8f1971406ac699f0139811ba800f8923d1adb4a7"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.11/mq-mcp-x86_64-unknown-linux-gnu"
    sha256 "5f496f3ebc967944c70095cd9ce7d8b594e98f385068529e5c255a3c63d07b68"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.11/mq-mcp-aarch64-unknown-linux-gnu"
    sha256 "d07223d2454d85cd41760faf123c15dd4f5e89e3dbeccfbd0c2aaf8a5e1f87e1"
  end

  version "0.2.11"
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
