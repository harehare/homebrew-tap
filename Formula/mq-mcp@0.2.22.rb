class MqMcp < Formula
  desc "mq Model Context Protocol (MCP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.22/mq-mcp-x86_64-apple-darwin"
    sha256 "f3e5d63225980dee1eb8411e5178f0f19d763b81612190609b7084c9202c381b"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.22/mq-mcp-aarch64-apple-darwin"
    sha256 "12f1501deba36e068d1a6f95f445dde740bc8313b8174805f9a2be1fade09080"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.22/mq-mcp-x86_64-unknown-linux-gnu"
    sha256 "1fe2d0e2eb0714b48017cd95494a8d2c7f0d665e00bf9d83ce32d7a56ba58b38"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.22/mq-mcp-aarch64-unknown-linux-gnu"
    sha256 "2e2798da500d03b8befdc867aedb7579bb5a82ae41038962fc6930b6341881e7"
  end

  version "0.2.22"
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
