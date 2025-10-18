class MqLsp < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.4.1/mq-lsp-x86_64-apple-darwin"
    sha256 "40f0bcbfb0bd7aa6b9fdf57ba5b1c2bfbe36d256650f5db6f368034ae6524906"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.4.1/mq-lsp-aarch64-apple-darwin"
    sha256 "834d56bc5959f8931241e1e4fd0e7dd07956909bd7f9fabed05f035c0bb4bc2f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.4.1/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "a271cf3e42004c767cbbb4a67feee592ddac3cfa05500985be1bf5b88383a863"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.4.1/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "8d44939956195c7870f3d711bd3cda3b4f07f4cc88001874f8b122fd72b513b3"
  end

  version "0.4.1"
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
