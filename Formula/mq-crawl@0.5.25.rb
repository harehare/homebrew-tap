class MqCrawl < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.5.25/mq-crawl-aarch64-apple-darwin"
    sha256 "27ed9762a7f775fa2f6162fc90c86feddb26a9a35138f6532dcb8c1c8457701c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.25/mq-crawl-x86_64-unknown-linux-gnu"
    sha256 "7ea604300c169332c89b5b3aa3d945a2bf373b87a75456f0cede586f44e53e50"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.5.25/mq-crawl-aarch64-unknown-linux-gnu"
    sha256 "127a1ea0a55fb63a607054fc975687ea588300c534e7f2fe0854717bb9868846"
  end

  version "0.5.25"
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
