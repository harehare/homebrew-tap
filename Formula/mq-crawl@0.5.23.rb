class MqCrawl < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.5.23/mq-crawl-aarch64-apple-darwin"
    sha256 "7849d9254ab837a71a4b1771f15f56d46080aaa9b4c6554cce55a3ad023ab955"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.23/mq-crawl-x86_64-unknown-linux-gnu"
    sha256 "40ab8cee7815a6ed4e4ac83951532f9b2935ca7983e1b37814642be891e8d7b2"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.5.23/mq-crawl-aarch64-unknown-linux-gnu"
    sha256 "c4fdc14001f24915df70ba27fea33b213f26cd36fe2e421aa63d929cd3ff8ca9"
  end

  version "0.5.23"
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
