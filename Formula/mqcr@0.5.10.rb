class Mqcr < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.0/mqcr-x86_64-apple-darwin"
    sha256 "c59036b4205ec80686f0c036f2fd48a3b49d6c997c57bd62bcd1b2bdc0930d5d"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.5.10/mqcr-aarch64-apple-darwin"
    sha256 "511df8ae958f6c72f1349598d05e0a52fc20469fd8d599cb0e5cbbaf0073bf50"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.10/mqcr-x86_64-unknown-linux-gnu"
    sha256 "29bcc1d7bd544b917601e2119fd4beab5668f892749d9de8af6a3565ffdef94c"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.5.10/mqcr-aarch64-unknown-linux-gnu"
    sha256 "6438664bb1aa38790e554c02ed0be26785bf45745d6fec752f55d00a58572680"
  end

  version "0.5.10"
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
