class Mq < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.4.2/mq-x86_64-apple-darwin"
    sha256 "8d5ebed1cbb48ff9c2e4572c43468137a5f864b09c83b76b6288b1fcf34c262e"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.4.2/mq-aarch64-apple-darwin"
    sha256 "40c3a74b780dcbd172c0d8be96e6b1327e5c5b2f04658c373ce515ec0aa9b4d1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.4.2/mq-x86_64-unknown-linux-gnu"
    sha256 "8c1d33956252947494fc22e3fe24e067fac42d235a44c743d2aeb7b87eac6c85"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.4.2/mq-aarch64-unknown-linux-gnu"
    sha256 "3daaa814e48c867867a56331329f0ddc3b269349d9795c97b737a355d81fb53e"
  end

  version "0.4.2"
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
