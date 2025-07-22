class MqLsp < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.13/mq-lsp-x86_64-apple-darwin"
    sha256 "ce067ca8013ccb553a292831eec056abcf3b20aa0fdd847e5acc6acab197993c"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.13/mq-lsp-aarch64-apple-darwin"
    sha256 "4becb41f77caef5fddd8b0ea8c627001cb1263530a9c591cb1092a37ca0fb7e3"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.13/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "150471188f00bb932ab32571e9ab55a848fe5ab7ee868569e27de21d1b4b8085"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.13/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "e40baaa3a458e0d2de7d72636fd4fb7e4ea341a96d954a30cedc732eaf8c9fa6"
  end

  version "0.2.13"
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
