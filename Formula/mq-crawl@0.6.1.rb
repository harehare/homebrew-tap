class MqCrawl < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.6.1/mq-crawl-aarch64-apple-darwin"
    sha256 "8888d57e37ce36089cd02e2a5270bad7f5a1fdaa0d88c464ce5c737d62a0fd6c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.6.1/mq-crawl-x86_64-unknown-linux-gnu"
    sha256 "bb3cc10c7afb441a3c2baf3fd88f0ef03737ae65594051f09d6807fb2bf360c9"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.6.1/mq-crawl-aarch64-unknown-linux-gnu"
    sha256 "1be7cfbd9a729a376a3c1e9b955843261adc7c8a21bc8fd93146e34dea7aeb68"
  end

  version "0.6.1"
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
