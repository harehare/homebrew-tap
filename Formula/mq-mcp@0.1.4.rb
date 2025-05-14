class MqMcp < Formula
  desc "mq Model Context Protocol (MCP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.1.4/mq-mcp-x86_64-apple-darwin"
    sha256 "120bec5784ef47b54675e041427e4314ef89af031130c378d688510212d585b0"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.1.4/mq-mcp-aarch64-apple-darwin"
    sha256 "aad1a2acc44378355f128dd7813f8f572d48efe240944ebcbe8b83db655ae25d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.1.4/mq-mcp-x86_64-unknown-linux-gnu"
    sha256 "8cece4655fceb38d20eb1ad0ee29fe0e39a47616962faa30323e20ab0723b434"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.1.4/mq-mcp-aarch64-unknown-linux-gnu"
    sha256 "c54cb13b36b3e223cc766953dff3e53820b8e0a64c6b8083abaf9c8dd31a6808"
  end

  version "0.1.4"
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
