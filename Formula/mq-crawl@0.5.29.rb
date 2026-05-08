class MqCrawl < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.5.29/mq-crawl-aarch64-apple-darwin"
    sha256 "18358751a07cc2c984ec258d7df2dd4a403ea4eff4b0c203f1e8f30a34a2d14e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.29/mq-crawl-x86_64-unknown-linux-gnu"
    sha256 "74fb6919cfabfde0a9b2a942beb3187fc56973f0c84d425092c036ca606f8a89"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.5.29/mq-crawl-aarch64-unknown-linux-gnu"
    sha256 "771da482266cf37d36114296262d2f85065f17a7b92434b557830a5a09f37584"
  end

  version "0.5.29"
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
