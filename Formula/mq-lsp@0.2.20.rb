class MqLsp < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.20/mq-lsp-x86_64-apple-darwin"
    sha256 "7c75991f910cb752ea5eac939a9a31649668ba0a43cc922d68d37d47bde3b14c"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.20/mq-lsp-aarch64-apple-darwin"
    sha256 "74ac7378f672753fce853372d6eb83bc6e32168931f42edd2748dcce630c06ad"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.20/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "760e9d5a0968bc0235c6890abdc6c1ea86cb06a0d9719cf5d74097a92d80687f"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.20/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "0f1a32279c74134931ae3b438520629e77b00fce734509385626c8e19acbc348"
  end

  version "0.2.20"
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
