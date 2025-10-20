class MqMcp < Formula
  desc "mq Model Context Protocol (MCP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.4.2/mq-mcp-x86_64-apple-darwin"
    sha256 "fc7890190607686818732c86fc8782f491f8dbba89ef2308d2ec0911a8ce0b5d"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.4.2/mq-mcp-aarch64-apple-darwin"
    sha256 "79f959d15dc207d6cf5121c7fc7d97eec9ebdfb2b6282eda487ac20e25ec3671"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.4.2/mq-mcp-x86_64-unknown-linux-gnu"
    sha256 "6c400e5b8cc252ce3104917cf7b689e3d5154d54a45b7ec3f6e226ee3fc8dd39"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.4.2/mq-mcp-aarch64-unknown-linux-gnu"
    sha256 "9f2e2f2835ed2a37652cc7a2daa59fc441f60c34e9f6339b5ebdc1688ece7f47"
  end

  version "0.4.2"
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
