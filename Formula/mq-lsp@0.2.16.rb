class MqLsp < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.16/mq-lsp-x86_64-apple-darwin"
    sha256 "7411b97876171ef9ba5e90ea7e9b1ae42a376dbf0844122344240fd1930c5d44"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.16/mq-lsp-aarch64-apple-darwin"
    sha256 "2e9a3534e6d1d3409b6c2a5e3e2b52dd4227c2b73d1f1846a0cd133445d94317"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.16/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "f0d414fcdcf3818b3aed7c36c7251c799049b35e939bcae86ea2a1cff5024ced"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.16/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "96469e5f23da17210009acc3eb0363b22c56fce99e52ea1710c1cc255843797d"
  end

  version "0.2.16"
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
