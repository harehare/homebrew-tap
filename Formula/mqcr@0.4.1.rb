class Mqcr < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.4.1/mqcr-x86_64-apple-darwin"
    sha256 "2d03a8ebfd389d25436bf7abeddcfe895e3fe8b835fd8cfcbe0855ccdfe85ded"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.4.1/mqcr-aarch64-apple-darwin"
    sha256 "534c7770988e99ed82778658a3a10c4ab072da9d0f5232795f6d335fa7c8e4dc"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.4.1/mqcr-x86_64-unknown-linux-gnu"
    sha256 "eb52e0cb51b8ce1563e7fc73ce77f52d483d6723ef6378cf7bd4cc8512538612"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.4.1/mqcr-aarch64-unknown-linux-gnu"
    sha256 "c9bb10959fa66f7e6764c10dc01afdeb14b453973326fd1c36a742d2424da852"
  end

  version "0.4.1"
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
