class MqCrawl < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.5.27/mq-crawl-aarch64-apple-darwin"
    sha256 "6962f838742d063b0182d140b62d116ad4da168c160e12bd2ec91f989f257208"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.27/mq-crawl-x86_64-unknown-linux-gnu"
    sha256 "c280406fad0fae853820738464e0dfab35bf739f49cc3293e90ac7f8b12a8630"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.5.27/mq-crawl-aarch64-unknown-linux-gnu"
    sha256 "89935cda3936ea2a4999acf5b7a53a08102e8202450cd98b1d3ebd91c02fe79e"
  end

  version "0.5.27"
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
