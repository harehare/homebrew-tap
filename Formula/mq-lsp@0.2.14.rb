class MqLsp < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.14/mq-lsp-x86_64-apple-darwin"
    sha256 "17a97d23c516bbc42dfe887d6f663dcbc3e6129b79f28992e1cbdadcc7843954"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.14/mq-lsp-aarch64-apple-darwin"
    sha256 "dd86089dd7d8128eb2dd4dc78e962411b931c6916a2c6f9e3b43401e174f5b46"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.14/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "0d92fb73ad149baafee08c28d570fe683aee7aecd074038f2bc85ff9b6afb998"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.14/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "8cb86b75683a3b837c36700e2b146547b392fe20e0e57538729eabe0598ffdde"
  end

  version "0.2.14"
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
