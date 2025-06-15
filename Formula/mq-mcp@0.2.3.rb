class MqMcp < Formula
  desc "mq Model Context Protocol (MCP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.3/mq-mcp-x86_64-apple-darwin"
    sha256 "f31457b987bdbcf8e2397e871d83d8317aad036a592648083e8cb0c280950b80"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.3/mq-mcp-aarch64-apple-darwin"
    sha256 "1b26032e8b1db7742a9ec7234a2205573baaaedec50c3d65c22841e2a281710a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.3/mq-mcp-x86_64-unknown-linux-gnu"
    sha256 "cfdd4d2332bf191ce0205778a1cf162c6088ea517d0a694a8117c2a79b7e5a97"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.3/mq-mcp-aarch64-unknown-linux-gnu"
    sha256 "81210c60a666bc43a37016c7c91803079a2f2c33a0448fce5ec48d5b7ac12726"
  end

  version "0.2.3"
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
