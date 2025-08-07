class MqMcp < Formula
  desc "mq Model Context Protocol (MCP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.16/mq-mcp-x86_64-apple-darwin"
    sha256 "184feb96ac525b7a7352c11af58c4d993f690d74b63f1af4bf4c7353ac150fd1"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.16/mq-mcp-aarch64-apple-darwin"
    sha256 "eb086f2fe6ae48a74462b991a25692bebc44a5ccb5d759153faeb14fb111c2c3"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.16/mq-mcp-x86_64-unknown-linux-gnu"
    sha256 "1199d82e592ab0d61ca8d130810b9f29ea7408d7b472f6601892fb999f89ca73"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.16/mq-mcp-aarch64-unknown-linux-gnu"
    sha256 "049a5f6efa4f0657185291a9649e802b800320f6007bc6f833fb3e1e64114d8d"
  end

  version "0.2.16"
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
