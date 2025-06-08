class MqLsp < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.2/mq-lsp-x86_64-apple-darwin"
    sha256 "a6a32a869fa7189c1742eb2d1d233cde3bdd0626bd1971ff1743c6a4f16cdf43"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.2/mq-lsp-aarch64-apple-darwin"
    sha256 "28a8d11f42c8e136a8a4ca400197f8a673d07009dadc8c05f886e9726b19f4be"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.2/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "ee1ab34d9034358ef1ff962555a6fc8c84aa7f4f7b7e13c47196dab8cbb52caf"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.2/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "8215fa0d479a75bbdb0058f884c290d6d93b036cc4e1ce49bf2b1b099b459c7c"
  end

  version "0.2.2"
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
