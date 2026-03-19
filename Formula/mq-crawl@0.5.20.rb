class MqCrawl < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.5.20/mq-crawl-aarch64-apple-darwin"
    sha256 "5af77530fc51fc556b14e261ac03baf8eae149f5ff12274af1a3336e0d282bb1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.20/mq-crawl-x86_64-unknown-linux-gnu"
    sha256 "0e9baf56bc7a7ae3e1da21b719cd1b6ce2658b740e33cf08f32a47e4b319775e"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.5.20/mq-crawl-aarch64-unknown-linux-gnu"
    sha256 "25f77f6bd37f61eb4889e9f0f2b57e302765c3acb8657051b9f12d10a7e3ef41"
  end

  version "0.5.20"
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
