class MqLsp < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.1/mq-lsp-x86_64-apple-darwin"
    sha256 "bc6fc798d244ee5b68225351c82aa38e4be0a3b5477db1a639ea528cd96f91e3"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.1/mq-lsp-aarch64-apple-darwin"
    sha256 "dbdd5f46a7ad7060c1f25f0a6b1f6a096cabd9da770a20d36c37cac8bf608a6f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.1/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "414d8eabd1aec78d6ea4f91a3579184029273f9451bfc75a88775655a4230639"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.1/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "81ec989e3e75ca49bae9b88acd2145b548c9f6e428efd370a0ed2e96a1ddb59b"
  end

  version "0.2.1"
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
