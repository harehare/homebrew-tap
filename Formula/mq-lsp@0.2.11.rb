class MqLsp < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.11/mq-lsp-x86_64-apple-darwin"
    sha256 "3b00d5fe904afc456b30b534e49ddfdf028cbfed312654bd584468e2201506ea"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.11/mq-lsp-aarch64-apple-darwin"
    sha256 "12beb87ee09a092ec34b57886c487bb02723b95b46ac57f82ba3e688f013c454"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.11/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "11030138fffb55892666db322933ac26219cc33e9d0f6c570e4f42aac1d74bbf"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.11/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "854f9ba24e0cec948972e5d63004bc5429ff5aaefa658ee376c161cda165af64"
  end

  version "0.2.11"
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
