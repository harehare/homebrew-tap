class Mq < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.17/mq-x86_64-apple-darwin"
    sha256 "506c73e78e7b132d21a27ecb25def4eacac0c6e1681832c49b0cd9dd7bda12bc"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.17/mq-aarch64-apple-darwin"
    sha256 "3b6849eaa54a4f970b1c9d4e579f66f676c87bde3d9f95ebcef8a7688d3de76a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.17/mq-x86_64-unknown-linux-gnu"
    sha256 "5fcb5aa8c3a3831a988780a5c636b1d2bf83a818622e505fcf8f0b0a5c5a8027"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.17/mq-aarch64-unknown-linux-gnu"
    sha256 "01ad7eea8579cb9af1a968cf09b3807fd982bc9c0ad3671218ccd92be4787b23"
  end

  version "0.2.17"
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
