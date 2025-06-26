class MqLsp < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.6/mq-lsp-x86_64-apple-darwin"
    sha256 "11517918068e1e6b6f0c98489779732c9abdf651212a84e5b7a4a799941e9584"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.6/mq-lsp-aarch64-apple-darwin"
    sha256 "a88323959b9f0176226ec12258bef476e4df0e178592caac19cf3106cc14ed22"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.6/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "a89f8b6ac16aad6b5661b8e68f28a64c1c649a905c1fb62eb087cfdbac11048b"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.6/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "8869abe348f7cb5971c28077829a188ebafd006f8dc0fa75365d1c7300cac5e9"
  end

  version "0.2.6"
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
