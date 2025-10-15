class Mq < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.4.0/mq-x86_64-apple-darwin"
    sha256 "3ab4b6517edd9df40a8844f5dc9fe3b512734920616cf0fa76055c79e80c4308"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.4.0/mq-aarch64-apple-darwin"
    sha256 "4657ab371d5b6645e180dc573e3396f0c3c20c82c724ea270cf81f230e189b37"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.4.0/mq-x86_64-unknown-linux-gnu"
    sha256 "24110175abb86480ddee2c25e7761b5a6f3181504776ad15c31ae0a08b8bd3fb"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.4.0/mq-aarch64-unknown-linux-gnu"
    sha256 "8771e1a02de05eb261cb71cdfa4650fb5adc4ed1b7b7c4ef905ccdbfa1e1f0d6"
  end

  version "0.4.0"
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
