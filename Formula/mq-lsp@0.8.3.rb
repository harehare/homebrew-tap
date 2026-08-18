class MqLspAT083 < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.0/mq-lsp-x86_64-apple-darwin"
    sha256 "fb526e79e120116bbb60d48d1f4284edd73546e6913f97bf316f6b9dd89e7055"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.8.3/mq-lsp-aarch64-apple-darwin"
    sha256 "3e38d1d04afe21d906135610a9f2e371c57c99a1168aae7370967c14ca37c8d7"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.8.3/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "db61a6c2299e59bc0c48f8e0aa9cb0ca763b6bd693357b2514b5e4fc00142061"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.8.3/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "4912269570d63dac3efe3e8c27380e86f01fd758c6aad453af23423a9ca6b39b"
  end

  version "0.8.3"
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
