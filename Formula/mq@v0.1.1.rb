class Mq@011 < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.1.1/mq-x86_64-apple-darwin"
    sha256 "a294fd220acd4d68f3111e57b6719573c5779c7b098d26e80733a34d65bb0bee"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.1.1/mq-aarch64-apple-darwin"
    sha256 "e323eaffc302fc0c4598454d307a100a72f655e23f7cc95c51a312e3cb472014"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.1.1/mq-x86_64-unknown-linux-gnu"
    sha256 "32757617b99aa52a4c4b4f5fc0edaf6cee7b8a3f21ba6ef954ee52ec871e9956"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.1.1/mq-aarch64-unknown-linux-gnu"
    sha256 "b06fc7633da0d0a42b56f3ac5d1eee328481f97085ed477d2f1ab537ce5053a6"
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
