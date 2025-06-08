class MqMcp < Formula
  desc "mq Model Context Protocol (MCP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.2/mq-mcp-x86_64-apple-darwin"
    sha256 "f3d4d4f0d8dbc44a1c816bad34a0dada5195edb96b9a78bc19643f39dff65282"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.2/mq-mcp-aarch64-apple-darwin"
    sha256 "488d80c68dc05b0cb349fe096881e2cbbca1e39250402ccae68e60ee2f35bda4"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.2/mq-mcp-x86_64-unknown-linux-gnu"
    sha256 "cf1d64daa895fa9e656f36717c2e1b58c71ede140296eaad1e9cca8758a32e1d"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.2/mq-mcp-aarch64-unknown-linux-gnu"
    sha256 "71dfbe95f220e121f00124df04bb47625ba94c147ff776b054be94cc5be59f13"
  end

  version "0.2.2"
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
