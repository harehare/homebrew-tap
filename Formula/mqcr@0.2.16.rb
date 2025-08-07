class Mqcr < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.16/mqcr-x86_64-apple-darwin"
    sha256 "c37a3ad99f504e89c2f8e15501f2c90f362025808309f5e1843a7e7cd18028da"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.16/mqcr-aarch64-apple-darwin"
    sha256 "e25d36364cb3a366788a48a017096185357ec532556bcb5007c8f35b73084c3e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.16/mqcr-x86_64-unknown-linux-gnu"
    sha256 "7d70430f6850e00fbb63c11aa69937214e2f25a2713142d5a8be2dd1be124cda"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.16/mqcr-aarch64-unknown-linux-gnu"
    sha256 "f37978d513443399bb1a12bd04990d05606955c6f430dc448ddff2f60efeea76"
  end

  version "0.2.16"
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
