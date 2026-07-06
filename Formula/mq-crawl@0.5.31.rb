class MqCrawlAT0531 < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.5.31/mq-crawl-aarch64-apple-darwin"
    sha256 "f257c76843fd5d6a8034ac7426b3f8039ca5431694133f3dc42437ee84bc1f2a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.31/mq-crawl-x86_64-unknown-linux-gnu"
    sha256 "c1e8255a3f5b50d9f4efc7dfa49fec6d9eb188af02ad2f2b214c3189966e8070"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.5.31/mq-crawl-aarch64-unknown-linux-gnu"
    sha256 "f63c16f9af0b1b9a48c3b8b15bbf3696525fd137156dd9dee2349c5b5288c642"
  end

  version "0.5.31"
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
