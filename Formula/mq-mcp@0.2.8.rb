class MqMcp < Formula
  desc "mq Model Context Protocol (MCP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.8/mq-mcp-x86_64-apple-darwin"
    sha256 "c94cd8585b3a3c61e99afaa4aa29440397aa2eb2ab2b3681e8a9ba366570da70"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.8/mq-mcp-aarch64-apple-darwin"
    sha256 "46a81fadfb6933968d04e6fb52a24b8a0b4fcfeff0c513dcae7029863ceff80f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.8/mq-mcp-x86_64-unknown-linux-gnu"
    sha256 "4fd84c7d163776b7f38223b7b17ab1d54cc69936e59a5eb358cb6ab6132f3c83"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.8/mq-mcp-aarch64-unknown-linux-gnu"
    sha256 "9f33e853953f56ae0bb5ca9b2f2d8ff54d2bd5257c20fbac4238398287f51912"
  end

  version "0.2.8"
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
