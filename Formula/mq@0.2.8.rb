class Mq < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.8/mq-x86_64-apple-darwin"
    sha256 "01cf2f9d6c3f738ba2f3d4d6519f7b93b0100a1d150d0e3747c58e5c0d2edfb7"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.8/mq-aarch64-apple-darwin"
    sha256 "f9618653f66b3f8d1b6f08469e46cf712b8b18575b482ba86b139fc25c32b083"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.8/mq-x86_64-unknown-linux-gnu"
    sha256 "c3308b32016cc839493623836ecc4a5cc01e4ede4cfb684a2b72740b54b1c10e"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.8/mq-aarch64-unknown-linux-gnu"
    sha256 "d06aa539f85927b2a428dddff802839543f6a8296c60c240235e9bd461230491"
  end

  version "0.2.8"
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
