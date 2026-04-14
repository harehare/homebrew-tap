class Mq < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.0/mq-x86_64-apple-darwin"
    sha256 "5b044861f1e087c05be5634ae1490641653db9b00722bd7df69a1a329df5d000"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.5.26/mq-aarch64-apple-darwin"
    sha256 "d3969c8ed859f3ac8001e43c7c233b01f8885f69458bc62fc1634f57a5b3565a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.26/mq-x86_64-unknown-linux-gnu"
    sha256 "7d3cd6bf0b8498f8eadec8c9359658fb338b52102355e110a4682890af97964c"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.5.26/mq-aarch64-unknown-linux-gnu"
    sha256 "0adc1dd07b60d9b9f97eddbda974ab22a797635317c900d7ba5a90b7bd242192"
  end

  version "0.5.26"
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
