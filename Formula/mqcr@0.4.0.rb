class Mqcr < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.4.0/mqcr-x86_64-apple-darwin"
    sha256 "c7083da2c8b44a9b21b74a223df092beb72e352f513c041c2483851181c8687e"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.4.0/mqcr-aarch64-apple-darwin"
    sha256 "635a046d2efe414acc556e82200ae7a55f7c3565a48b2d5e0207c02538578b68"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.4.0/mqcr-x86_64-unknown-linux-gnu"
    sha256 "e0e71de719796770fa72f4202c4ef59066f8307b22a90361d57689f7f3c5c0a2"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.4.0/mqcr-aarch64-unknown-linux-gnu"
    sha256 "ccf714e93f62a9d288f50aa8c52a83b04cfa3aa258a3b66a52a759219b676645"
  end

  version "0.4.0"
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
