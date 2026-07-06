class MqDbgAT063 < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.22/mq-dbg-x86_64-apple-darwin"
    sha256 "29fcc3df19231c0cc567bbd15639ca9c655410fba67dc8beaabdc8f96991a372"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.6.3/mq-dbg-aarch64-apple-darwin"
    sha256 "729d0c8cd9aa57ce901b0bee37421c8447e8f98fb5b43c760106a328540946ab"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.6.3/mq-dbg-x86_64-unknown-linux-gnu"
    sha256 "0f28945965b0c2f0726cb8f8fef432244c37e1a7dda9c806bd0e1a2b36b31249"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.6.3/mq-dbg-aarch64-unknown-linux-gnu"
    sha256 "496a69783c00bc3a56ad48cf74ddfd7caf07d311939326beba09176285525974"
  end

  version "0.6.3"
  license "MIT"

  def install
    case
    when OS.mac? && Hardware::CPU.intel?
      bin.install "mq-dbg-x86_64-apple-darwin" => "mq"
    when OS.mac? && Hardware::CPU.arm?
      bin.install "mq-dbg-aarch64-apple-darwin" => "mq"
    when OS.linux? && Hardware::CPU.intel?
      bin.install "mq-dbg-x86_64-unknown-linux-gnu" => "mq"
    when OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      bin.install "mq-dbg-aarch64-unknown-linux-gnu" => "mq"
    end
  end
end
