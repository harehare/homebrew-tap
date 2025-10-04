class MqLsp < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.3.0/mq-lsp-x86_64-apple-darwin"
    sha256 "25fe46a226e8b9b179c95743957cedbac19b6830c358ac9b6ec42f317cebbd0b"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.3.0/mq-lsp-aarch64-apple-darwin"
    sha256 "5ca5456922fa6f1d53c07a9417d7af0d52c28a80dea36638f8aacd0a7c6ae2eb"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.3.0/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "74c098736f11e2a77f8a5289b386b71fb45595ec5ab0f6378922f75b76ee0e51"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.3.0/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "043b3d2115f4c38e08298b7ef8914c1cb21b4a7e3fd1ef5cf63ff3903e3c68b7"
  end

  version "0.3.0"
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
