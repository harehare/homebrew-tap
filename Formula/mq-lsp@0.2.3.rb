class MqLsp < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.3/mq-lsp-x86_64-apple-darwin"
    sha256 "2404b96781d14e2d1cb11058b264dc4680c3336d6165a8da1b258910a580e3d5"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.3/mq-lsp-aarch64-apple-darwin"
    sha256 "8bddf37f2c5c9463132c0243bfda6fbf3c4d54fae99013f11bd67a6312d14160"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.3/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "1c329389003765b40841d6fbfe9c84c409d8d2b9320b91916d6d1b17d9f39087"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.3/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "712d69ab98b95e800749992ae4e634259ece8405cf02bb2a2779da75cbe982c8"
  end

  version "0.2.3"
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
