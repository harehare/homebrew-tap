class Mqcr < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.4.3/mqcr-x86_64-apple-darwin"
    sha256 "85db7d7026db76f844e2d4943c6c06ebda5b03851a180e51c8f4cdfb937bad18"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.4.3/mqcr-aarch64-apple-darwin"
    sha256 "29715fb2cd7c0e515e64da65beb7ac4749d5cba713b395c3d4af3f7adf509dd1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.4.3/mqcr-x86_64-unknown-linux-gnu"
    sha256 "787a152df4848dfb307aa81dacdae2a6c8deda13fa27ea42fffd461eb2d15d3b"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.4.3/mqcr-aarch64-unknown-linux-gnu"
    sha256 "0ecb3e24a7d0cf8377ad2dfcfb9a5594cdf2882176b35d1e1fb60b285fb2f59f"
  end

  version "0.4.3"
  license "MIT"

  def install
    case
    when OS.mac? && Hardware::CPU.intel?
      bin.install "mqcr-x86_64-apple-darwin" => "mqcr"
    when OS.mac? && Hardware::CPU.arm?
      bin.install "mqcr-aarch64-apple-darwin" => "mqcr"
    when OS.linux? && Hardware::CPU.intel?
      bin.install "mqcr-x86_64-unknown-linux-gnu" => "mqcr"
    when OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      bin.install "mqcr-aarch64-unknown-linux-gnu" => "mqcr"
    end
  end
end
