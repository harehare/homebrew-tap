class MqLsp < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.1.2/mq-lsp-x86_64-apple-darwin"
    sha256 "ba5e4be06529720604822ee7983cef6a8cefb0c7e87e8fecbe8ed2590f88bffd"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.1.2/mq-lsp-aarch64-apple-darwin"
    sha256 "efdd35963eb293d27c88d6d21fbb8bbb6cf402b8a5ed3a7eb94aad35a6e9c6a9"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.1.2/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "cff459f24c1fb49855c5d11bb1812871d0a0f9f60d0d9e6edeee1da91df0b773"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.1.2/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "55b37f4fe69baa86c6c1ac583d35152c0b893fde62dff8755cfea2d66d24f084"
  end

  version "0.1.2"
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
