class MqLspAT0529 < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.0/mq-lsp-x86_64-apple-darwin"
    sha256 "fb526e79e120116bbb60d48d1f4284edd73546e6913f97bf316f6b9dd89e7055"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.5.29/mq-lsp-aarch64-apple-darwin"
    sha256 "8994e83149d7e88f98633fb2b87f0734fd24456bec85988cc0cafa738ed79cf6"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.29/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "6a5ffab706bd869b0bc3a5433460e18ef0f6b810e6fc5b212bef12eaa204d59e"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.5.29/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "c5a981b2d5cccda8f23deb815f112f21e0947d7ad6e789c384defef3cfbc16fa"
  end

  version "0.5.29"
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
