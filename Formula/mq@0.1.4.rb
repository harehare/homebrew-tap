class Mq@014 < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.1.4/mq-x86_64-apple-darwin"
    sha256 "c740f881b174c16065b971a1af8f40b5b6aabc115fa88a82dba88ffe5de0c5ed"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.1.4/mq-aarch64-apple-darwin"
    sha256 "7fda14f98a228d992850c36a8c0e80810f33e213b79589c1c777d3bf1d3adb3a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.1.4/mq-x86_64-unknown-linux-gnu"
    sha256 "6530a010634a8c6d06cf7c6c677146dc3303d8d88df0a561ea37427af697346b"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.1.4/mq-aarch64-unknown-linux-gnu"
    sha256 "69dabee1cc931edc438985bd72e4205d6ae3beba1b8095dd493e5b251f5da2ff"
  end

  version "0.1.4"
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
