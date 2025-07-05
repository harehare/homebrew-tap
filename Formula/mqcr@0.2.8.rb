class Mqcr < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.8/mqcr-x86_64-apple-darwin"
    sha256 "68b2068eff2724f1ea4c7a9c9d876bdf8f6963ce86af5afd72b69d9f7fb73c06"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.8/mqcr-aarch64-apple-darwin"
    sha256 "72eaa260d9d0cdfbe548ae8b4a00e5107b2bfd9f6b3dea2f44a9d281383e3cac"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.8/mqcr-x86_64-unknown-linux-gnu"
    sha256 "79ffc1e2c0ee54a6ded789a366a4ff77f10dac61ba3f252773cedd80a875b3dd"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.8/mqcr-aarch64-unknown-linux-gnu"
    sha256 "f497dbf8f2f906f2e9d72bb47c71ff7c6ef8298cffab7363b1bba2fc744df987"
  end

  version "0.2.8"
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
