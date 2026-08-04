class MqCrawlAT080 < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.8.0/mq-crawl-aarch64-apple-darwin"
    sha256 "58eaac5277948f07b79a1d23dcf2a0b58e7b5a5bd018c7e1b06ce472199e5fe5"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.8.0/mq-crawl-x86_64-unknown-linux-gnu"
    sha256 "fb42a2ec6959ad4b644fd3c7b70e26be804b79bf62bc66d2c27814a3e5588ebf"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.8.0/mq-crawl-aarch64-unknown-linux-gnu"
    sha256 "65f2fa2b591ce0fc79be040652c84f0a26a54d3a5e98006a180f6ce4f8b89e41"
  end

  version "0.8.0"
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
