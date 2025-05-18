class Mq@016 < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.1.6/mq-x86_64-apple-darwin"
    sha256 "45ff342c3936159795de716cb034db1cdacce0b7a91b97e6585a9b124feb4c6d"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.1.6/mq-aarch64-apple-darwin"
    sha256 "641caba757803171a67b19cc305a33ae629c42f4adf43a9027e089a6d2e913b6"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.1.6/mq-x86_64-unknown-linux-gnu"
    sha256 "774b00bbdfbe668f3805f750d369718931da92f2da8853a3d006400bf55ae44b"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.1.6/mq-aarch64-unknown-linux-gnu"
    sha256 "d501f803e004e1e0435edaece2a94ba5f6965fb302a4f1586fbb031b7b2d3ff1"
  end

  version "0.1.6"
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
