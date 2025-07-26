class Mqcr < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.14/mqcr-x86_64-apple-darwin"
    sha256 "e5a78438b351ecf36ae564b0b91b27c4100249658835efa4d2da562ba7d55277"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.14/mqcr-aarch64-apple-darwin"
    sha256 "3480bf256950f118ac74702bb00a151130690315b99fcb6ad570a282913c5fd9"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.14/mqcr-x86_64-unknown-linux-gnu"
    sha256 "968c4b4b076dee56c24bf39a6cd9a9fa399fd0d9f7a5984a15581ca8c7817e91"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.14/mqcr-aarch64-unknown-linux-gnu"
    sha256 "cc68eca90238598ca7c4b7a11ea15ff2e98a3270746825e4543441a2299f253a"
  end

  version "0.2.14"
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
