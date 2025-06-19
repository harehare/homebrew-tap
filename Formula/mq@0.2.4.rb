class Mq < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.4/mq-x86_64-apple-darwin"
    sha256 "a2e5a574a098951dfab0e8b42adffdc3e0104d03969c6729f4770b701d381e16"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.4/mq-aarch64-apple-darwin"
    sha256 "4b410924faa2a30f67eaeab8a6b7a5ff7d894c21c27c3caf69ec6bbdae503632"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.4/mq-x86_64-unknown-linux-gnu"
    sha256 "832742a65b98fb009c10e62ef2e689284351d590cc62d643ef80f67252315b5f"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.4/mq-aarch64-unknown-linux-gnu"
    sha256 "baffb10359d620b1c167469eae27b29e017f1e4f7ed80e1d3bc089ae8be5ea7d"
  end

  version "0.2.4"
  license "MIT"

  def install
    case
    when OS.mac? && Hardware::CPU.intel?
      bin.install "mq-x86_64-apple-darwin" => "mq"
    when OS.mac? && Hardware::CPU.arm?
      bin.install "mq-aarch64-apple-darwin" => "mq"
    when OS.linux? && Hardware::CPU.intel?
      bin.install "mq-x86_64-unknown-linux-gnu" => "mq"
    when OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      bin.install "mq-aarch64-unknown-linux-gnu" => "mq"
    end
  end
end
