class MqLsp < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.10/mq-lsp-x86_64-apple-darwin"
    sha256 "633a2771e63deda1ec0a70a994e96fae2ffd905bf3c5f80f69dc1b757f3d7b6b"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.10/mq-lsp-aarch64-apple-darwin"
    sha256 "7a8e75d95b2085786befa82902ea4d5c8d0826897bd195eeb40d69f17667829e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.10/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "274692822f0e4dbd9952c606fcf3e07d598327a800bfcd771a7dc3e311996634"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.10/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "6925c0b637cb2fbc336c37a8180bed61448b6b67d11519ac431c043d553e7d54"
  end

  version "0.2.10"
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
