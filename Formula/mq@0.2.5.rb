class Mq < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.5/mq-x86_64-apple-darwin"
    sha256 "5c987e5de5b244d9cda8565e179ebd1ada8e8a6f4acdeb66dcf3d9a48955861a"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.5/mq-aarch64-apple-darwin"
    sha256 "9de0dd656bf2d4c02a7adb56d15ff30b7651707971dd947d3e3a3e14dfb8c728"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.5/mq-x86_64-unknown-linux-gnu"
    sha256 "309b8de433ab5d2f7a74df691fbfd34cc767e35110d284668bf1c9c0e7d1a78a"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.5/mq-aarch64-unknown-linux-gnu"
    sha256 "3abee2b4b05d1ee519fb217be8804560729427b8bae4677f28b319edcb9fc580"
  end

  version "0.2.5"
  license "MIT"

  def install
    case
    when OS.mac? && Hardware::CPU.intel?
      bin.install "mq-x86_64-apple-darwin" => "mq"
    when OS.mac? && Hardware::CPU.arm?
      bin.install "mq-aarch64-apple-darwin" => "mq"
    when OS.linux? && Hardware::CPU.intel?
      bin.install "mq-x86_64-unknown-linux-gnu" => "mq"
    when OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      bin.install "mq-aarch64-unknown-linux-gnu" => "mq"
    end
  end
end
