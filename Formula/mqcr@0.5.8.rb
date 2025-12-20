class Mqcr < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.0/mqcr-x86_64-apple-darwin"
    sha256 "c59036b4205ec80686f0c036f2fd48a3b49d6c997c57bd62bcd1b2bdc0930d5d"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.5.8/mqcr-aarch64-apple-darwin"
    sha256 "2ff1097fa6db97dab8e7e75419cd333f24431954c3ec432fc111da69fabf89d5"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.8/mqcr-x86_64-unknown-linux-gnu"
    sha256 "d3d663be6d8e4438491d8ef307e18d287f142acaf11213aefe5fce51386ab949"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.5.8/mqcr-aarch64-unknown-linux-gnu"
    sha256 "91635234ba9c0403ccd14aed85ce96f8c68d557a8c19fc9fb06c3c2677e8fcf4"
  end

  version "0.5.8"
  license "MIT"

  def install
    case
    when OS.mac? && Hardware::CPU.intel?
      bin.install "mqcr-x86_64-apple-darwin" => "mqcr"
    when OS.mac? && Hardware::CPU.arm?
      bin.install "mqcr-aarch64-apple-darwin" => "mqcr"
    when OS.linux? && Hardware::CPU.intel?
      bin.install "mqcr-x86_64-unknown-linux-gnu" => "mqcr"
    when OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      bin.install "mqcr-aarch64-unknown-linux-gnu" => "mqcr"
    end
  end
end
