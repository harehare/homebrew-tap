class Mqcr < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.6/mqcr-x86_64-apple-darwin"
    sha256 "6cc6ab8ca58d08b43a27e685219f25e23dfd4f975c3f9421421574e5016f16d4"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.6/mqcr-aarch64-apple-darwin"
    sha256 "f40aea13253087ec7b243cea26af556e5b19db1d4f4b165974edeb3e8ae8ad61"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.6/mqcr-x86_64-unknown-linux-gnu"
    sha256 "0602ff02bb992d7faa7757a9a803b9455897b180458d3e352635ce89bbb821c4"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.6/mqcr-aarch64-unknown-linux-gnu"
    sha256 "2239f7fcec858454c947d8ccd18069fe4b3def819d4f1bb0e907b6182af23153"
  end

  version "0.2.6"
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
