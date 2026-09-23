class MqCrawlAT090 < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.9.0/mq-crawl-aarch64-apple-darwin"
    sha256 "b1b035795720021fb7dce8f2de789243057171f3466c939d5d5b79b4086b6821"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.9.0/mq-crawl-x86_64-unknown-linux-gnu"
    sha256 "f589c031b03294e1e0bf7e91c3f9a402a437e751706ceccacd5c5061566f9226"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.9.0/mq-crawl-aarch64-unknown-linux-gnu"
    sha256 "1befd0a1c84cfc9d0ccc31b6d910ee109f8cdf37f67e20e332148894308d40db"
  end

  version "0.9.0"
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
