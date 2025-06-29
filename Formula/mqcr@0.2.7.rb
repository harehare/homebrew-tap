class Mqcr < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.7/mqcr-x86_64-apple-darwin"
    sha256 "e7d80912ade5bfb7a4dd604d75ce0462c25ebfac13a2d70768377861f151dd4f"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.7/mqcr-aarch64-apple-darwin"
    sha256 "114c08f30d8d9846063e8abf81b99174d0c89d6e863c46bb3c95d78c6811b0d0"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.7/mqcr-x86_64-unknown-linux-gnu"
    sha256 "43ef13b1dd4e57c6d17a6394fe1b10996ca3886a7fbdcce2e95433f9207bdf39"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.7/mqcr-aarch64-unknown-linux-gnu"
    sha256 "5c81362a014e0b897135b7744c44e7143de4515b2daf6d3546cfb9b7f14eb13f"
  end

  version "0.2.7"
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
