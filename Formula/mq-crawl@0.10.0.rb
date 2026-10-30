class MqCrawlAT0100 < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.10.0/mq-crawl-aarch64-apple-darwin"
    sha256 "4da6cffec26c8d5afe86fee5f5e2bebc1a0ea65bcf1ff59792c383babfd14554"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.10.0/mq-crawl-x86_64-unknown-linux-gnu"
    sha256 "a4642ea0bc1c1647c473e9f2e4f9d93a501849042b9135365bd42fbbc63fbb4e"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.10.0/mq-crawl-aarch64-unknown-linux-gnu"
    sha256 "6670b1deaeaa85074d2c017758d58c8d5ceb5d40c298c8872f4f21ba91c0a6a9"
  end

  version "0.10.0"
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
