class MqLsp < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.7/mq-lsp-x86_64-apple-darwin"
    sha256 "fee0b181488220947ea9b76f698d742e7ea56765a6b03ebafee427877c241e89"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.7/mq-lsp-aarch64-apple-darwin"
    sha256 "e08650344ae2f47cacb95c52d335e1582b81d38c28595b1ca020f79d9c1c4a9f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.7/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "2833991916e17a9172113ef566612e33264eb8d30fd0acf8ebf2954a81b2dbc9"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.7/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "399c5c6c7f4ccba354eaade439cba75cf50f7fad8ec31d3a1af5b4a0d35b26a4"
  end

  version "0.2.7"
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
