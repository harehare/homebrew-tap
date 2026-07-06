class MqAT063 < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.0/mq-x86_64-apple-darwin"
    sha256 "5b044861f1e087c05be5634ae1490641653db9b00722bd7df69a1a329df5d000"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.6.3/mq-aarch64-apple-darwin"
    sha256 "ce881449748d1b287a5bb648b10261d80e37e9c66f25d87e2f4d08f2f178cd78"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.6.3/mq-x86_64-unknown-linux-gnu"
    sha256 "fd3d34b3851ef9498e7b9c434e80ee748e4b5b99b2facc53d1776c1dbea6fa48"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.6.3/mq-aarch64-unknown-linux-gnu"
    sha256 "0440a9540561c83e52200aa29973db6b567494014e3da33397d630e9e1df3db3"
  end

  version "0.6.3"
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
