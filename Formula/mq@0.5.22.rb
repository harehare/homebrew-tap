class Mq < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.0/mq-x86_64-apple-darwin"
    sha256 "5b044861f1e087c05be5634ae1490641653db9b00722bd7df69a1a329df5d000"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.5.22/mq-aarch64-apple-darwin"
    sha256 "5a31fbc0631400029cf6dcdbfd5645883b7f33e74c2845a21a29f23c973de867"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.22/mq-x86_64-unknown-linux-gnu"
    sha256 "e732cc367fbef320e6d6c2dd96a581394f437045e969df161f101a7d2d4f6c63"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.5.22/mq-aarch64-unknown-linux-gnu"
    sha256 "0eda8f6ad9ebcb3e3816e40cf4a49e21178de7ad3b8f1e43968cc038f27a9441"
  end

  version "0.5.22"
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
