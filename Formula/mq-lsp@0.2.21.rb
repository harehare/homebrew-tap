class MqLsp < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.21/mq-lsp-x86_64-apple-darwin"
    sha256 "949c73266ec584cebc0744adbf95db82d55f9ff796b2dc0efcb4e70eae5a86e6"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.21/mq-lsp-aarch64-apple-darwin"
    sha256 "0ac311b8b22aea3b23d0ec9f37066ab945dd93d5f43495ed0789e3217a37df57"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.21/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "ce46c2c6fb18a123444b6d69f9d894781c0d8db4320a4bde615e2a723c82b523"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.21/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "18a59358ecbbb5568f2c1b1e18cbe90e2fec377872a7bf987a53022641279d41"
  end

  version "0.2.21"
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
