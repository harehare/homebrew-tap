class MqCrawlAT070 < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.7.0/mq-crawl-aarch64-apple-darwin"
    sha256 "e838d85d71b804e1b05ea4fb24c4f26352f9b1e2dee3f12776e4ff66c910cbde"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.7.0/mq-crawl-x86_64-unknown-linux-gnu"
    sha256 "d7ea0cec7109d5feb469b1798dc90feac391aa5cbe9c753910f6f51000a16218"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.7.0/mq-crawl-aarch64-unknown-linux-gnu"
    sha256 "d36352784f8c0f3ba4bc71e5b57e4d1465510b316810fb46ff401a4d06698deb"
  end

  version "0.7.0"
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
