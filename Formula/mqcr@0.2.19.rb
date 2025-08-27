class Mqcr < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.19/mqcr-x86_64-apple-darwin"
    sha256 "4d2eb286d7518a7d97f7c133dd099e3f1357ba3a9203ad0ebb16b0736bb37c5e"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.19/mqcr-aarch64-apple-darwin"
    sha256 "d5dd7b01f335d0725189af828ea425030882292a86b280969872d9a8c94df67a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.19/mqcr-x86_64-unknown-linux-gnu"
    sha256 "66d704e432485b827602f001d4ef166453d964667d0007d5aab873b47c284c50"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.19/mqcr-aarch64-unknown-linux-gnu"
    sha256 "46385d9497cae195b36707ac96c499998c35ade77fd01308e8d984cb1acd93ac"
  end

  version "0.2.19"
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
