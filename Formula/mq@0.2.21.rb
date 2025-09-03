class Mq < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.21/mq-x86_64-apple-darwin"
    sha256 "a881cb0fced5a39c01759e5ca26ad0520b52510c8aa52eab56b823e8d2ad08e7"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.21/mq-aarch64-apple-darwin"
    sha256 "8f47161d0aea2cd7d599a912533a79647a1013a9a7a1d5039fc28d5d24627597"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.21/mq-x86_64-unknown-linux-gnu"
    sha256 "9de09aefe022b44781f39484760d942ff12dbf3804f66b9870f463fa0af5796c"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.21/mq-aarch64-unknown-linux-gnu"
    sha256 "e09f28e65e33261a23e170f45ec9e00d940a5a868e272da39a35e9dca6e36979"
  end

  version "0.2.21"
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
