class MqLsp < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.9/mq-lsp-x86_64-apple-darwin"
    sha256 "175516bc3e2741738510baf3975e3153afcdb1d3f2ad1dce70b650641f1e7824"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.9/mq-lsp-aarch64-apple-darwin"
    sha256 "dd9b3492153f79ee43e99a4b22200960378937c68546dad2ee38d2d557541103"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.9/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "625bddf4e313a778e51e084ac49cacb82bed7557609d8c06652c4dc6e45f39e5"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.9/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "30170ec3cc0b289a9ea987e72c10358bfabd1f02ecde51fc035ff9c1ef276d36"
  end

  version "0.2.9"
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
