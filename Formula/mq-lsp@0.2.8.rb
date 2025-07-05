class MqLsp < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.8/mq-lsp-x86_64-apple-darwin"
    sha256 "46c025743bd2bbb785573530b7e4b9f6e205dfa857d8f7a86c8c9d27095220e8"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.8/mq-lsp-aarch64-apple-darwin"
    sha256 "1f17212b88c812875763e44daa4562c9863f523447faa407c274fc0fe7efb10e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.8/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "58b183c5d4d2a4aadaf7cf69832137c32bea80a7e21fdbcabe16e0063d3a5f68"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.8/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "342fd5bea5137e3d7cd7cb949326864cdbaf34f2137fe11edfe0f194766e6e4a"
  end

  version "0.2.8"
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
