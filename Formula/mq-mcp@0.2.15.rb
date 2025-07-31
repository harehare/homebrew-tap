class MqMcp < Formula
  desc "mq Model Context Protocol (MCP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.15/mq-mcp-x86_64-apple-darwin"
    sha256 "dfe7c7bf5763f9a332f20bff726df158ebc5118c1f90f06ad9aec23ed89ef111"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.15/mq-mcp-aarch64-apple-darwin"
    sha256 "ea7b48472be59ef520ffd3f1992847cfbfe3f296eb5a6ff6bb3f0b9186478b7b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.15/mq-mcp-x86_64-unknown-linux-gnu"
    sha256 "45e1ec6dc6279383d3f2f3669cc323226629c72d1c24b0caf753ce5492c703bc"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.15/mq-mcp-aarch64-unknown-linux-gnu"
    sha256 "b6075139701d452fe180bbc5a1803bdcacdb973b00bdde9afe4e70984d02ff3c"
  end

  version "0.2.15"
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
