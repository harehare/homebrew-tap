class MqMcp < Formula
  desc "mq Model Context Protocol (MCP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.1/mq-mcp-x86_64-apple-darwin"
    sha256 "57fe58238a24cb755c8f4cfc954207622911894d0691f8eac82cb61c5235a905"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.1/mq-mcp-aarch64-apple-darwin"
    sha256 "11647e8396b7530ec2dbce59f9a8148cc89d186912055c4107cb86195fd3849d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.1/mq-mcp-x86_64-unknown-linux-gnu"
    sha256 "e8479eeb53f990c433374981bf7ddf650c9c305da576ec7a36ae9e85676df3f4"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.1/mq-mcp-aarch64-unknown-linux-gnu"
    sha256 "38dfb526c208a70d9d805f52ed3b51676e9f65986a5a57dd69885da6a6c090b9"
  end

  version "0.2.1"
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
