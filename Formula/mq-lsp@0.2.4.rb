class MqLsp < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.4/mq-lsp-x86_64-apple-darwin"
    sha256 "cbf12d008609a8b3dae308508a326e1f78168c1ed8c47526e5b9ccbb33ea385f"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.4/mq-lsp-aarch64-apple-darwin"
    sha256 "3216b5cbc40a1a0f89f803b1eb32a2748038df6d5d0ea54546c97796146f5bfd"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.4/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "b450bb4f2f82765ae6d440b994b4ab0bd8a2dc70d47fd25312fda0a1019b3f4e"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.4/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "6413a7f0c630b27bf355e1d247105278e9d9c71c43c58ba6c16667f8af7bf6f3"
  end

  version "0.2.4"
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
