class MqCrawlAT063 < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.6.3/mq-crawl-aarch64-apple-darwin"
    sha256 "1ab8cab5df14538f086032dffe645f89e6579efb2737af18b11578739e10a9df"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.6.3/mq-crawl-x86_64-unknown-linux-gnu"
    sha256 "00da325708a3e2865e431e2dd11e68153aa50a2f0e1db1e2974139ef309e39b2"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.6.3/mq-crawl-aarch64-unknown-linux-gnu"
    sha256 "89b0ec0fc8e694d85c64d8432e76b6774b1a5cdbecb418f1181111086b7c4dd3"
  end

  version "0.6.3"
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
