class Mqcr < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.15/mqcr-x86_64-apple-darwin"
    sha256 "635fbb1777a66b8f1f7a3d97ff92f6515d91169ba507ed6dc5ad721b9dbb4938"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.15/mqcr-aarch64-apple-darwin"
    sha256 "a04696b6c071e4bf7f0e0b0a01456859b6cc421b723e171275e493d24111f6cb"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.15/mqcr-x86_64-unknown-linux-gnu"
    sha256 "e1c235805e3c37457e945b225e4cdf6d9d819c4140ced7f622aeec68d16bf702"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.15/mqcr-aarch64-unknown-linux-gnu"
    sha256 "2d0227809ac38c4950dd33f905c0167cce16504746f00ba5b4ac715df63afd4b"
  end

  version "0.2.15"
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
