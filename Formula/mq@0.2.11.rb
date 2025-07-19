class Mq < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.11/mq-x86_64-apple-darwin"
    sha256 "f6b3ab8fea34300909dd4836430944b7309c2702d34e24e4f3689a1d44d91929"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.11/mq-aarch64-apple-darwin"
    sha256 "f43d2c2bf04c65b704fb00796c747de25d6110a87a736232aabe2ce2e9e23233"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.11/mq-x86_64-unknown-linux-gnu"
    sha256 "ac65e4e23eb5f96ced456fdf81f64e52ef05781a5b1d63393098f002a80c8304"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.11/mq-aarch64-unknown-linux-gnu"
    sha256 "a7391cbc65f78f3eaa78ffb05d77d2dc635f08552dd51342a87dd72c378c38ec"
  end

  version "0.2.11"
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
