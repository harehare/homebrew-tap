class MqCrawlAT065 < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.6.5/mq-crawl-aarch64-apple-darwin"
    sha256 "e973c6bb06587b19acf8a9ac28cee3398daf96c073aab8e148c8baa4e1cb9a50"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.6.5/mq-crawl-x86_64-unknown-linux-gnu"
    sha256 "92ad35985d8c1960e6645ab31c43fa22440c087b9d0ce86fad2f5db87e5c54df"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.6.5/mq-crawl-aarch64-unknown-linux-gnu"
    sha256 "7d213fe208d523043bf9965902333bf3093e6b6844d516eda966170d1cd5f676"
  end

  version "0.6.5"
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
