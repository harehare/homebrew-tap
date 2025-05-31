class MqLsp < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.0/mq-lsp-x86_64-apple-darwin"
    sha256 "20fcf998eb728813b829e2b02e2b8295c7d0fcbaf135798e6405b73e36fd7715"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.0/mq-lsp-aarch64-apple-darwin"
    sha256 "97a454c4d7985fffe8d78e40af8f42a145e135b5c7245da21b194de618c14bc2"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.0/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "a69e0a2b2fbf3acb10d7af895f3eb3d747807d26f597755a8d894ec3e24de7ca"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.0/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "001a5cd910db91f0c918abf6a62ac6e25b5399937a0baeb83ece7aa4616cbcc2"
  end

  version "0.2.0"
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
