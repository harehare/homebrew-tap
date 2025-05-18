class MqMcp@016 < Formula
  desc "mq Model Context Protocol (MCP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.1.6/mq-mcp-x86_64-apple-darwin"
    sha256 "5013ed692c132c9e79a6b27afe7522f945d28f4d45686690a79a5546d883d845"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.1.6/mq-mcp-aarch64-apple-darwin"
    sha256 "fb7b9a841c0bc55ce33c6ce922b90795755eba6c91e8cc208335d421fc178885"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.1.6/mq-mcp-x86_64-unknown-linux-gnu"
    sha256 "f991bb6dd5a28d45c19f6ef83561f535bae56fd18aafa444e3c7a14c1307fe4c"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.1.6/mq-mcp-aarch64-unknown-linux-gnu"
    sha256 "ae7c2693dd1305763b82969eb6b4e2a43759286b093f7085d3e07a2a23c55652"
  end

  version "0.1.6"
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
