class Mqcr < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.9/mqcr-x86_64-apple-darwin"
    sha256 "a9439455fb126c593261b25ef94c53fd2b20f872ced1d6caa5b02979a7f3c56e"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.9/mqcr-aarch64-apple-darwin"
    sha256 "0d661fce8f91fc16cb81eb038525310dfad968348534f36bd2d211f70187b93e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.9/mqcr-x86_64-unknown-linux-gnu"
    sha256 "320fc1173600e49a694f09829d44114fb3ce4e63735f5ba4bc22daf4dafd7c63"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.9/mqcr-aarch64-unknown-linux-gnu"
    sha256 "8f2a6629763c6de9cb55e4ecdcd8b152649f8d7e3cb44536ec585db5c7770f8c"
  end

  version "0.2.9"
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
