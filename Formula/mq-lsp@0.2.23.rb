class MqLsp < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.23/mq-lsp-x86_64-apple-darwin"
    sha256 "46391fd452b3e23443f91371b83dddb3c8c26e42eddcdfd40cb6996e017ab56b"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.23/mq-lsp-aarch64-apple-darwin"
    sha256 "4c4c9924adad91f878688130088778ce805a25161233d232a8287161e6d38815"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.23/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "e60e362072ab877f05bcc99421c4f9f32e3f257f00699140eed78e7c06e172c7"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.23/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "8ffab9d71814990ad18d55356345003f4c67ab37b0902314e7cff92731143697"
  end

  version "0.2.23"
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
