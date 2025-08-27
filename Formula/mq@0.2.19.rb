class Mq < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.19/mq-x86_64-apple-darwin"
    sha256 "e9b6bbb53aa010f602ddfb6dc210b786b9651ff29d17b79884fd88cceb1f469b"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.19/mq-aarch64-apple-darwin"
    sha256 "9f9498aadf322ed8651c763dcb0755c23ea1da2509d9fe0dd8cebc215494cba7"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.19/mq-x86_64-unknown-linux-gnu"
    sha256 "bbcfd7a4a742f22a71d985b3a424d6a6568d36564edc21de8f51ad198c3a8eef"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.19/mq-aarch64-unknown-linux-gnu"
    sha256 "980b6d02a07f9181f3180285c773904607af475c007ed8ea61a39becc9aafc99"
  end

  version "0.2.19"
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
