class MqCrawl < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.5.22/mq-crawl-aarch64-apple-darwin"
    sha256 "a0af32d5ef54a0aa4b9ba9f2bcfe81cb18306dccf710d99ce664307fbd9448d4"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.22/mq-crawl-x86_64-unknown-linux-gnu"
    sha256 "bd0c9dca544a638b74c6d0e9474bd74a7175e74380abf398633f55651d517663"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.5.22/mq-crawl-aarch64-unknown-linux-gnu"
    sha256 "41f2b7ba672b87ab12ceb762e4b1c992fee4885ff03b58ab36220a909d752b78"
  end

  version "0.5.22"
  license "MIT"

  def install
    case
    when OS.mac? && Hardware::CPU.arm?
      bin.install "mq-crawl-aarch64-apple-darwin" => "mq-crawl"
    when OS.linux? && Hardware::CPU.intel?
      bin.install "mq-crawl-x86_64-unknown-linux-gnu" => "mq-crawl"
    when OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      bin.install "mq-crawl-aarch64-unknown-linux-gnu" => "mq-crawl"
    end
  end
end
