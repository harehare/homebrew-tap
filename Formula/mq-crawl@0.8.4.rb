class MqCrawlAT084 < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.8.4/mq-crawl-aarch64-apple-darwin"
    sha256 "b17f7a3de4380cc3cebd0cf07e9576c50b5c4a8dab27b765e0330eec86fc3904"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.8.4/mq-crawl-x86_64-unknown-linux-gnu"
    sha256 "30467f5aac7cd8b76337be02dac9d4ad2658fdf83bf55489396b29070ada8e8b"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.8.4/mq-crawl-aarch64-unknown-linux-gnu"
    sha256 "6644bfb92e95283cae8e667c77824f792a1f9b8ac994adf6ab5f0a3dcbeebeb1"
  end

  version "0.8.4"
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
