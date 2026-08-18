class MqDbgAT083 < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.22/mq-dbg-x86_64-apple-darwin"
    sha256 "29fcc3df19231c0cc567bbd15639ca9c655410fba67dc8beaabdc8f96991a372"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.8.3/mq-dbg-aarch64-apple-darwin"
    sha256 "57ae80b9daa40e59b915f6fc4838d0f1eb7d58c0c91eccc1b14ed640aa1e9e0b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.8.3/mq-dbg-x86_64-unknown-linux-gnu"
    sha256 "d0589e4fac01d5eff16a0139e4cea2992c2d230cfeb81e59fa7cda86baf7a871"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.8.3/mq-dbg-aarch64-unknown-linux-gnu"
    sha256 "0a8e824b404995ede3e04c2737c896e0d4928881f71a458813d5a5f7af06e6c0"
  end

  version "0.8.3"
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
