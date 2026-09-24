class MqCrawlAT091 < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.9.1/mq-crawl-aarch64-apple-darwin"
    sha256 "6c82e0f7f20f1fbe8a45317029970763bd53745f40659146b028bc79f721e33c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.9.1/mq-crawl-x86_64-unknown-linux-gnu"
    sha256 "b2c72052e97167aac9ef1e493c3ede21e437e6f8b4ebbfb09e322b2198ca615d"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.9.1/mq-crawl-aarch64-unknown-linux-gnu"
    sha256 "d5e5e218e06a3de987ace82413dd496588054a3563bfe3c511ca153ea5d82d5d"
  end

  version "0.9.1"
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
