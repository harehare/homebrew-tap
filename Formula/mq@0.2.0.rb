class Mq < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.0/mq-x86_64-apple-darwin"
    sha256 "83790e389bc355e4682ca6adf46ee672109f68a0b6002a071a0748d602f52572"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.0/mq-aarch64-apple-darwin"
    sha256 "975b1b5281fd8d0840d062b7caeabcb381df3deff6787d59c0601abdab753a4a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.0/mq-x86_64-unknown-linux-gnu"
    sha256 "df533e865d3b74c59b90116eeaa845f7430daab76206094d1583236cf522e393"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.0/mq-aarch64-unknown-linux-gnu"
    sha256 "39293ac99ccbde5cff355ed13647633c69e6a08d66162979475a1b512a8f7e63"
  end

  version "0.2.0"
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
