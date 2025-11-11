class Mqcr < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.0/mqcr-x86_64-apple-darwin"
    sha256 "c59036b4205ec80686f0c036f2fd48a3b49d6c997c57bd62bcd1b2bdc0930d5d"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.5.1/mqcr-aarch64-apple-darwin"
    sha256 "92c297ec7d3697d2fbca2626edc391be5c2b58fc50168e0c4d309aede6ad6a86"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.1/mqcr-x86_64-unknown-linux-gnu"
    sha256 "145d74954bb6e3670b0dc0f3f095f469a871b3120d9ae60e8db41b14f5c6fa87"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.5.1/mqcr-aarch64-unknown-linux-gnu"
    sha256 "2fae2bdc83b08d1fa2062d916c79584130cd0aef5c73cd3c2d594b72474e1cc6"
  end

  version "0.5.1"
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
