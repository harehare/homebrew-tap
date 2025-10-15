class MqLsp < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.4.0/mq-lsp-x86_64-apple-darwin"
    sha256 "ebf6c06effb2628cc7e7bbb3dfce230a17cd7ba1aea6774d13b5b146ac352392"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.4.0/mq-lsp-aarch64-apple-darwin"
    sha256 "17e472902165bd653e651769aa7462d55fecd89cfe849a364efcf9b2b09ea235"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.4.0/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "6ddd3166223f8a0e5a3a333137a0aa2b6191674476e8e00cb647fe8ecac2a9b5"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.4.0/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "5afc693e16cc5880a2f41cef440bfb3f2d6112cdd7b08a93c1469c8b16b94c6e"
  end

  version "0.4.0"
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
