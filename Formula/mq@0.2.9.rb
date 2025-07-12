class Mq < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.9/mq-x86_64-apple-darwin"
    sha256 "3a1728535054fe6c0b284b104b6fbe063d4946c481888d31af8edf5804202282"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.9/mq-aarch64-apple-darwin"
    sha256 "af15e015160aa20e6a984cf72d8edc925599daa476ac0ae81a94380f78ea9e45"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.9/mq-x86_64-unknown-linux-gnu"
    sha256 "0961f4a0f6a7110740a13cf10df6b3c2c2fb737669cd22ad00323e3995449c06"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.9/mq-aarch64-unknown-linux-gnu"
    sha256 "90ac04878b6fb43c3b8723d2f1a50e5357239ab7e30ada710e5ed2dda78b3619"
  end

  version "0.2.9"
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
