class Mqcr < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.17/mqcr-x86_64-apple-darwin"
    sha256 "727c49b49c5fc23a9c3aa58abdf2afdc6779d2d0a8677abfbb60021f5f8f4587"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.17/mqcr-aarch64-apple-darwin"
    sha256 "d5b9ba9a1dcb891dd895fb3ea594c686f7366fb90c36cf7fc0bb58af061040b2"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.17/mqcr-x86_64-unknown-linux-gnu"
    sha256 "68429df771a2e01175a251904adf753a44c1eee412d0fd10b00135d847697177"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.17/mqcr-aarch64-unknown-linux-gnu"
    sha256 "df2465fe850b1e054739de37838247a103900a0c2514fc314ce428dbea7eda50"
  end

  version "0.2.17"
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
