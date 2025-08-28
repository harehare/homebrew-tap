class Mqcr < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.20/mqcr-x86_64-apple-darwin"
    sha256 "4ddbf45b3092fcb30ad2117e15745e1d59d8992edcb62fc20c30cdcb1d7fbaf2"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.20/mqcr-aarch64-apple-darwin"
    sha256 "ee41b588379b248ec3ee588bdf0a6dd98eb9ab0211b0ee45094bddba05694b19"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.20/mqcr-x86_64-unknown-linux-gnu"
    sha256 "aed26db54f3c00ad141c0f91da70f52e407ae2f476e73b6d3ff1ac1d2e6a7241"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.20/mqcr-aarch64-unknown-linux-gnu"
    sha256 "47d7e7473e953d35461a829fba80d20ff4b902b8898931800634de425418033e"
  end

  version "0.2.20"
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
