class MqCrawlAT0101 < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.10.1/mq-crawl-aarch64-apple-darwin"
    sha256 "16c7dcee8431540008d4d024c3493d0799db5e319ee39ff8cdbc08ebbf1af256"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.10.1/mq-crawl-x86_64-unknown-linux-gnu"
    sha256 "cd16a55edf97455830711b2c43dae96ab474fc538b7d309817723ccda66b38c3"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.10.1/mq-crawl-aarch64-unknown-linux-gnu"
    sha256 "a9c16234ba239746d0d90bc44606d11fd0f971efa57ed4ce2df65794ba239c5f"
  end

  version "0.10.1"
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
