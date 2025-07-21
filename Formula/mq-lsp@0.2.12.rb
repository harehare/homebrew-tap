class MqLsp < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.12/mq-lsp-x86_64-apple-darwin"
    sha256 "c3230477c29819bdbab9c34045f7d879c4a8ecd7dff1484546bfcbf50bfacc31"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.12/mq-lsp-aarch64-apple-darwin"
    sha256 "2995a706c0a4fdd3e338a195e6ca7731180f7b5a1b54e95cabdd4d0a474b95d8"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.12/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "ebef3184046e50afb2124e06c71d26dc1ff3628ca93276b3c51dceab55b71a8f"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.12/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "c171d3618b58fd3f927d45dcbe13a1e2a7dad96abe69d39b92e55e712dfc3648"
  end

  version "0.2.12"
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
