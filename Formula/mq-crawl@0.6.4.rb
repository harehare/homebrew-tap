class MqCrawlAT064 < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.6.4/mq-crawl-aarch64-apple-darwin"
    sha256 "6a717a02f4b7f34656061096862def637923f2d47a5cfd6faa832d510b8abdbf"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.6.4/mq-crawl-x86_64-unknown-linux-gnu"
    sha256 "3f8dde6fb06b9a2b9212ceb69cc8c2fb7deb6cfc9a5b85c0282c5973b3c6d4de"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.6.4/mq-crawl-aarch64-unknown-linux-gnu"
    sha256 "8db58e18ee32a67f8645a206c674d5314527f3e8cafeaddb1e10b32729d8dfa5"
  end

  version "0.6.4"
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
