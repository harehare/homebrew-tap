class Mqcr < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.10/mqcr-x86_64-apple-darwin"
    sha256 "3a852cd09bc27e4c50d83c7e1b5c187f2e5f66d9af9580a0ebe9393600947aab"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.10/mqcr-aarch64-apple-darwin"
    sha256 "b0e6472437561b7ea50ff81c553f3c2fe5038706ba8289050e8e28d15b3c087d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.10/mqcr-x86_64-unknown-linux-gnu"
    sha256 "094c46bbfb0999c11e0788bfb744bb5f9c240c9ac789775e46b5f3b7ea0368e0"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.10/mqcr-aarch64-unknown-linux-gnu"
    sha256 "8c9efe7d97c2fe9abba25802ffbb021c531746783095aef04cd8342702a11ee7"
  end

  version "0.2.10"
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
