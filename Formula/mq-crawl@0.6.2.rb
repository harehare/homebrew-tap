class MqCrawl < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.6.2/mq-crawl-aarch64-apple-darwin"
    sha256 "3ddd922e182c195b49b4217d67df662dc519327a056157bf757124ab56152c56"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.6.2/mq-crawl-x86_64-unknown-linux-gnu"
    sha256 "67e9188f228fa2e261bf5799ee0df256530aaffbccdf2bb163c129417cf45598"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.6.2/mq-crawl-aarch64-unknown-linux-gnu"
    sha256 "71ce915c3fa8444b03d425d76a37bf7f488bb19d0036d45b97f482175d1f277b"
  end

  version "0.6.2"
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
