class Mqcr < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.12/mqcr-x86_64-apple-darwin"
    sha256 "d86d02e6e5c5334010f72dcb38702448960cf4e2d5009a1706b82ccf0f8da467"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.12/mqcr-aarch64-apple-darwin"
    sha256 "5260ee4e2b9ecba61c889db9bf165e6bd7aaa3c8839ee76198187d7ae5c796f3"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.12/mqcr-x86_64-unknown-linux-gnu"
    sha256 "1fd4a5e2f600086080e640a0be638a3b0bf221e4759bb91089d2eb94d6b101a1"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.12/mqcr-aarch64-unknown-linux-gnu"
    sha256 "212171afb9800d6fd58e25f1a37fdd5dafde94c59d5ea7007f3f7655562214f2"
  end

  version "0.2.12"
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
