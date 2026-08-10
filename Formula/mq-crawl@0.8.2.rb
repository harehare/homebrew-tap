class MqCrawlAT082 < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.8.2/mq-crawl-aarch64-apple-darwin"
    sha256 "7f394e2da993f5298e13a9eed61b793e835672143ffd92697b954510087976b5"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.8.2/mq-crawl-x86_64-unknown-linux-gnu"
    sha256 "607e60e0e64097678c133da5d9e8522d00064afa942354bf130b39f216d4f3f8"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.8.2/mq-crawl-aarch64-unknown-linux-gnu"
    sha256 "ace4f3c61e6164ed0fdc40bfd3eacc37067bfc2d333d54b632a9f13fa536f4da"
  end

  version "0.8.2"
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
