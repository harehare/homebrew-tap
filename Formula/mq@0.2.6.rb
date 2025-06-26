class Mq < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.6/mq-x86_64-apple-darwin"
    sha256 "ed0c0bb9cceba9e7e0c2db81d4e5dbff1a671cea8fbfea0674433c5401782588"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.6/mq-aarch64-apple-darwin"
    sha256 "eb62fb15a1d2b192797a3f911a4aedb452b3060485de91582aaa945a1057e658"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.6/mq-x86_64-unknown-linux-gnu"
    sha256 "4f221e48f31a45e70ced496b97e8965f9482e1e1cd25a75e599847d109cc1601"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.6/mq-aarch64-unknown-linux-gnu"
    sha256 "c5fcba9ad9e41c9e47a34049a19643fae25a6dfd9ff5225201bcc7c5a2779a56"
  end

  version "0.2.6"
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
