class MqCrawlAT083 < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.8.3/mq-crawl-aarch64-apple-darwin"
    sha256 "d74e13f253d42b6f26a78d3fcbcea59178eecd10c094de790a539834dc2526c2"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.8.3/mq-crawl-x86_64-unknown-linux-gnu"
    sha256 "012e9397f34c178470e101a90eb59091030e10a48621d53ba3a334a0de660c1e"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.8.3/mq-crawl-aarch64-unknown-linux-gnu"
    sha256 "8e3274e7d053910ef21c33426120f3e87e600fbfc14b21036240532d2615cffc"
  end

  version "0.8.3"
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
