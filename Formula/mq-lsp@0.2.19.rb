class MqLsp < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.19/mq-lsp-x86_64-apple-darwin"
    sha256 "cd779311e6f4c47fb38e932a6f6f31ecd66ace8968503e035db1f7757644ae4c"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.19/mq-lsp-aarch64-apple-darwin"
    sha256 "b12c30763c8c782c7ecf50ba52c69793e4f55c142c1953d1a0c1340cd69d76d1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.19/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "9ba40514492366fc07371dfd159bf66d599257e3b1914045d2fcc836e48684a6"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.19/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "500e24af200c883eddfefb7d83bed50071e8d1c6143ba5b5436316264a560952"
  end

  version "0.2.19"
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
