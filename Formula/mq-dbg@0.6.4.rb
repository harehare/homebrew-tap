class MqDbgAT064 < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.22/mq-dbg-x86_64-apple-darwin"
    sha256 "29fcc3df19231c0cc567bbd15639ca9c655410fba67dc8beaabdc8f96991a372"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.6.4/mq-dbg-aarch64-apple-darwin"
    sha256 "4833332d7228b78fa73b43045d7e63da1b9b4a2dae2458907444610baeb5f2d1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.6.4/mq-dbg-x86_64-unknown-linux-gnu"
    sha256 "670c02ccac79ec8d07698dbbf8d183b284e0c306a6a7bc7113fba2729caf9bb9"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.6.4/mq-dbg-aarch64-unknown-linux-gnu"
    sha256 "04dd8e7489d01ce16e86dcfe253dd868711bd13c1e8b4351c96587bf704fbcab"
  end

  version "0.6.4"
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
