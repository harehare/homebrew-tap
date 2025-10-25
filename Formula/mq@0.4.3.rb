class Mq < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.4.3/mq-x86_64-apple-darwin"
    sha256 "71b87083ff94b272a818f97c0e1bf1039c324b62ba9d6ef15a2a3f2df0aaa91a"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.4.3/mq-aarch64-apple-darwin"
    sha256 "2d7e3b4f9adb15d8a812075b57bbf850adb5663b1b2243a7086bc6d4c61ba54b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.4.3/mq-x86_64-unknown-linux-gnu"
    sha256 "73823f0248fe655b8a49b66c6f2bbab2a3a5a026bcde67f3d440eed737c44abb"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.4.3/mq-aarch64-unknown-linux-gnu"
    sha256 "c4a9fece2f5317dbbfd9b564ade0009e95d2e292fefe6b362b87acd19e25b0de"
  end

  version "0.4.3"
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
