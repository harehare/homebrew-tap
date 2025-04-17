class Mq < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v#{version}/mq-x86_64-apple-darwin"
    sha256 "e17e4ca07a95ae68a17eb345c6d23515c5368920795d13f81fe3caaff928d41b"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v#{version}/mq-aarch64-apple-darwin"
    sha256 "b8711ce7e91cce41655269d68212cb4cce45346bc3a124220403cb2d0e4d87b1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v#{version}/mq-x86_64-unknown-linux-gnu"
    sha256 "b9e2c997c631dfa7fdec27f5e6beb3261720722e8df40ae1f7d8cf7ebf9036a1"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v#{version}/mq-aarch64-unknown-linux-gnu"
    sha256 "c49dc0cd617ece52c5b6f07ae76f6619420cfa9303d268aaea4ce084b60272e8"
  end

  version "0.1.1"
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
