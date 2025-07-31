class MqLsp < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.15/mq-lsp-x86_64-apple-darwin"
    sha256 "3cbded945201aa574eef367f74dbcfede0a1402e7fec1843c88708796ce91a59"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.15/mq-lsp-aarch64-apple-darwin"
    sha256 "ab7b69d166f1c6b6c56c2968304f6c9d46ccc8edd893b81402f3dbb85f0e18b8"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.15/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "36d61a5dc1a38fb566a3809841f64e1d4f7993b53ed1ff5d72becf7a2656b3b1"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.15/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "5fd28d05527a5bb98950a1a15d4d9a0753050af6211fd2a0c7e89438666dde94"
  end

  version "0.2.15"
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
