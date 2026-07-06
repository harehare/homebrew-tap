class MqLspAT060 < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.0/mq-lsp-x86_64-apple-darwin"
    sha256 "fb526e79e120116bbb60d48d1f4284edd73546e6913f97bf316f6b9dd89e7055"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.6.0/mq-lsp-aarch64-apple-darwin"
    sha256 "38c01b09e056cefc7b285b3be327dc18b63f5bb0a9b324279884703b51900de2"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.6.0/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "6359783edc0310b6fc5ae2ce93ae4e0a1ad57facc2f1ec6228845653f43b12b3"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.6.0/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "ffa927eedcc6f5cbb39edb788e4b84cdb6f3b760a282aab5037f6d905c539022"
  end

  version "0.6.0"
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
