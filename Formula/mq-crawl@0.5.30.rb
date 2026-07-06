class MqCrawlAT0530 < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.5.30/mq-crawl-aarch64-apple-darwin"
    sha256 "d216c20bad0c4ad2ee3e2f2faa937b1bc559921fe5b5a676164598055ede3ecf"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.30/mq-crawl-x86_64-unknown-linux-gnu"
    sha256 "cf84b569c3ac267614c8237edf7dca73ac62dc552bb84f231119f0286fbbb731"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.5.30/mq-crawl-aarch64-unknown-linux-gnu"
    sha256 "b17ed7198ee8f47cd433cbf8a039f3818f6a75b9637bb9b8262d7c8171733681"
  end

  version "0.5.30"
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
