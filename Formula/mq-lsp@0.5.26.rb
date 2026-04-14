class MqLsp < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.0/mq-lsp-x86_64-apple-darwin"
    sha256 "fb526e79e120116bbb60d48d1f4284edd73546e6913f97bf316f6b9dd89e7055"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.5.26/mq-lsp-aarch64-apple-darwin"
    sha256 "7152293370f3261c8608342ec7c6a46a6e1422ec8c7d70782fd2a09c5abefebb"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.26/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "bd0aa52b96eaebc6d986563cc368cd8e894e2baf40890895c8fc14ab24101b99"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.5.26/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "16853320992c962336e2bce075932a44ef897dbb64960196c3c9a28181cc90a6"
  end

  version "0.5.26"
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
