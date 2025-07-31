class Mq < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.15/mq-x86_64-apple-darwin"
    sha256 "0313ec1e0fb48690e095ea94576d8a52e15f522694772963edcf7fbe6ff4b591"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.15/mq-aarch64-apple-darwin"
    sha256 "9b3e09e669988df743383b921507de3b1a2165a56da41bddcf4bb6a44ebde42f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.15/mq-x86_64-unknown-linux-gnu"
    sha256 "c5ba909d4928b8a566db2e2bf5c912cd705f14f3ac3f22ef5c19f8eb602ceb92"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.15/mq-aarch64-unknown-linux-gnu"
    sha256 "98ea3b6ca019c6d17a587ee4a3c72fc138b2ca8c765caf0b2b6372ac15ed76ef"
  end

  version "0.2.15"
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
