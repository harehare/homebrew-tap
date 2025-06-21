class MqLsp < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.5/mq-lsp-x86_64-apple-darwin"
    sha256 "13b744fdf044295eff0e808bab75087f7627c3b3f31f28a31adf568e64a39275"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.5/mq-lsp-aarch64-apple-darwin"
    sha256 "6b5f20ef89d3dce9e1eb9ec46459359be6e4c210eb1593236a3a6d3de9f0c58f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.5/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "0226a97da2564f7f9557ee9df11a2a039d787d40af5646777a3b805845197b9f"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.5/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "3994b55c6eb68d49a7e0fcf9fd78ec2abd10c4e9ba8b5ea54ed8be7653009815"
  end

  version "0.2.5"
  license "MIT"

  def install
    case
    when OS.mac? && Hardware::CPU.intel?
      bin.install "mq-lsp-x86_64-apple-darwin" => "mq-lsp"
    when OS.mac? && Hardware::CPU.arm?
      bin.install "mq-lsp-aarch64-apple-darwin" => "mq-lsp"
    when OS.linux? && Hardware::CPU.intel?
      bin.install "mq-lsp-x86_64-unknown-linux-gnu" => "mq-lsp"
    when OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      bin.install "mq-lsp-aarch64-unknown-linux-gnu" => "mq-lsp"
    end
  end
end
