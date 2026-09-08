class MqCrawlAT085 < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.8.5/mq-crawl-aarch64-apple-darwin"
    sha256 "138316eca44ebdeda3c5367d0a9bd9b36af47b229291d3a256bba8001f4df66f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.8.5/mq-crawl-x86_64-unknown-linux-gnu"
    sha256 "6b2e4b1a6f71af961f62311ef8c63c85c6967b8fbc284824981fc122abc529de"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.8.5/mq-crawl-aarch64-unknown-linux-gnu"
    sha256 "7f57cd3e0ad4d29614f67b7535bdfaa4a444ea98adef8d914534528b55dc9b60"
  end

  version "0.8.5"
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
