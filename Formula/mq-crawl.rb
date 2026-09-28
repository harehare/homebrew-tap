class MqCrawl < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.9.2/mq-crawl-aarch64-apple-darwin"
    sha256 "a5cf95865cc42bf99ed3937ffff2deec0037513b9110d1939590378358a040fb"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.9.2/mq-crawl-x86_64-unknown-linux-gnu"
    sha256 "a74358855d43c0ab64be0589e15cdaaca537ed02c9c633d913edc1845d4c80d1"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.9.2/mq-crawl-aarch64-unknown-linux-gnu"
    sha256 "61b8fdcf721b5bd6830164f2118828c7dfd5c5b6a129ff811721a75333a98dae"
  end

  version "0.9.2"
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
