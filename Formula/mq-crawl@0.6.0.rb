class MqCrawl < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.6.0/mq-crawl-aarch64-apple-darwin"
    sha256 "88fabb0ff3b765840188ad01aae11f6fb08812cff5d0649982a7e5a750102be0"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.6.0/mq-crawl-x86_64-unknown-linux-gnu"
    sha256 "1baf6f9219c8adf328a537ca59315f2fa548856d2c527eced42b5e168e7fe136"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.6.0/mq-crawl-aarch64-unknown-linux-gnu"
    sha256 "a6933d9755417ad7a99aa487ddc256b216816fb5f311919cc87b0c2851e8ffc0"
  end

  version "0.6.0"
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
