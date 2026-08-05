class MqCrawlAT081 < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.8.1/mq-crawl-aarch64-apple-darwin"
    sha256 "3d3e04acafa0f7067aa45891d56f7289f9d873fabad2c31a217656247696b5dd"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.8.1/mq-crawl-x86_64-unknown-linux-gnu"
    sha256 "75e43803db53bfdd3f303107ceff90fcb9e5ae41bc248d3271ca65f5559e9e8b"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.8.1/mq-crawl-aarch64-unknown-linux-gnu"
    sha256 "72e8d03028244c3bdcce910b884bab5c6133d4d94f6fa246db1d0264ae20012a"
  end

  version "0.8.1"
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
