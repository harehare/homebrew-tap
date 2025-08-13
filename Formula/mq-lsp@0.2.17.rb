class MqLsp < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.17/mq-lsp-x86_64-apple-darwin"
    sha256 "1de1cb6b2c1e214e43c6cdefd1e99e859f91b9d5ebda35b09a62d9e4d2cd13c3"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.17/mq-lsp-aarch64-apple-darwin"
    sha256 "92c16a32ef8806b53aef2eb55395cefe366c896e965ef6d15de02fd559eef3e4"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.17/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "af3f86b93764ae89a10febbeeaf8b9dca5c70c6e2028192f2d92460d8e092917"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.17/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "1c4e0f07a02d7308617b818b844bb5898d4e68aaf51b1d69b11c8708b0570fd0"
  end

  version "0.2.17"
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
