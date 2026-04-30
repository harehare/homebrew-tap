class MqCrawl < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.5.28/mq-crawl-aarch64-apple-darwin"
    sha256 "cb6360a8a64a5a2850f32ef59eb73fcaeec6550d760e6ebde4d5af92ce4f8b18"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.28/mq-crawl-x86_64-unknown-linux-gnu"
    sha256 "752111c57bf68cb56c0dddb54371a0525ac4e57a4c04b1455ecbaeea4198d03f"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.5.28/mq-crawl-aarch64-unknown-linux-gnu"
    sha256 "544f87abe89b2c49f124c0d5ea3bfcf77e6a894e6889331eab56c77617d22726"
  end

  version "0.5.28"
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
