class MqCrawlAT093 < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.9.3/mq-crawl-aarch64-apple-darwin"
    sha256 "cd688ace4c5330b1050831e42aacab8f2c8da49edfe88c32047774ee590b39ce"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.9.3/mq-crawl-x86_64-unknown-linux-gnu"
    sha256 "97e95acacbf3634400f4ad0f0ef2f455a73257c18f42f938140af4ec670e5f65"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.9.3/mq-crawl-aarch64-unknown-linux-gnu"
    sha256 "e1fd567118159f339ceaf53d6bb419e0c05f33fb8a04728ddeb45b589325e8b5"
  end

  version "0.9.3"
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
