class MqMcp < Formula
  desc "mq Model Context Protocol (MCP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.4.1/mq-mcp-x86_64-apple-darwin"
    sha256 "53d8de4f065461acc20c09ef5a864bb7b1d563af296d6882a1328b8a436a7d17"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.4.1/mq-mcp-aarch64-apple-darwin"
    sha256 "1907c216920ec2914e1723cd397366fa80a0cb80420fda6d2d48213725ae861c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.4.1/mq-mcp-x86_64-unknown-linux-gnu"
    sha256 "44218013ccb76e68de5c152abfcb0eafdda9dfa5ef90543c7261606e1b612239"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.4.1/mq-mcp-aarch64-unknown-linux-gnu"
    sha256 "c7228baeeb6cdfd89d34912ed3128fc5ed738383b1548a90b13806af947bb93a"
  end

  version "0.4.1"
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
