class MqMcp < Formula
  desc "mq Model Context Protocol (MCP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.19/mq-mcp-x86_64-apple-darwin"
    sha256 "262847801021234a3986ed34fcaf5b4f8e419a323089ab43e1baf5c8c575583b"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.19/mq-mcp-aarch64-apple-darwin"
    sha256 "e34004443f3e9e5750b392e56cf20afaf46a0f3f919054c7395dc8a965ec4427"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.19/mq-mcp-x86_64-unknown-linux-gnu"
    sha256 "e171168154d159226fbbb4440f21edfe1bf096dd79ed19350cf5a5791351b42b"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.19/mq-mcp-aarch64-unknown-linux-gnu"
    sha256 "cbdae7e1f91b7a830156b9ff497582a9cf449e48bdb317606e6c423d71cfca0f"
  end

  version "0.2.19"
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
