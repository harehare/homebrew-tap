class MqLsp < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.4.3/mq-lsp-x86_64-apple-darwin"
    sha256 "7592b3336ac319524d64d7cae405febff7a5b190ee4a19bbcffb07a4de68f427"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.4.3/mq-lsp-aarch64-apple-darwin"
    sha256 "34048fc9df97e5512e4dfeaf94005d7305682efe4dc5ffcb3e1729d039e5da9e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.4.3/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "b1f4cf347a02ee44d892c1acc33ab7fc3171ed0758a944ee1e0d01b7c8e816f0"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.4.3/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "8038ceeeddafa699f3a8f940287f928b7fd62c5f093308de7e9b5995d3ec258b"
  end

  version "0.4.3"
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
