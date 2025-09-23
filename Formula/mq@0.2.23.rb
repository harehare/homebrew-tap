class Mq < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.23/mq-x86_64-apple-darwin"
    sha256 "7371ae6b8fd72cb2c07e0993420b4d6991a5266f7b0d6575625209450ed4ae8e"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.23/mq-aarch64-apple-darwin"
    sha256 "708ba4adbfe9a63d3b9712588a89ccd66b4156aa2a4741db01b66aa0f5af1a00"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.23/mq-x86_64-unknown-linux-gnu"
    sha256 "5b09fd9eca248d85285dd61c8cd2b503d1950d18f23ea94ef60bd881d07f33ff"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.23/mq-aarch64-unknown-linux-gnu"
    sha256 "0fa483c6fb294f40c682fcb70410ac276adad20f8d8ff49fac857640aa60274d"
  end

  version "0.2.23"
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
