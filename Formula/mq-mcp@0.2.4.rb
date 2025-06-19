class MqMcp < Formula
  desc "mq Model Context Protocol (MCP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.4/mq-mcp-x86_64-apple-darwin"
    sha256 "fe4e8bd289debe863cf381cd6d8ec25f2e38903a11e7cff7997853110a97de1b"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.4/mq-mcp-aarch64-apple-darwin"
    sha256 "57beb4c1b648dae26ba6caecd3b3af7aaf0ef95a7f9f1427b064c20643781025"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.4/mq-mcp-x86_64-unknown-linux-gnu"
    sha256 "8007472fe65107aa3c279bd7dd5c6b22d055d15038a98ae00b6568f53d0d9e52"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.4/mq-mcp-aarch64-unknown-linux-gnu"
    sha256 "af5590287c44f4a844d7103a46b3b0773a7d5a54213c0e77652ba85b79dc3763"
  end

  version "0.2.4"
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
