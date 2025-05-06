class MqLsp@013 < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.1.3/mq-lsp-x86_64-apple-darwin"
    sha256 "b282cf602aaccbe3547fe04d3069bc290faafef586d126adacb728667efd693e"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.1.3/mq-lsp-aarch64-apple-darwin"
    sha256 "b22ccbc4ee9f9e5d6c19a28132607d0c8da4157fe13a0fb9b7578e7a4fb06d8b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.1.3/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "95cd890d793e183746d3d375dbae113845ebbe45517bacb4a58a54367495799b"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.1.3/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "9f6a441efebcd209466889810b0f0e068392936484a8f96c995a1febbddd9378"
  end

  version "0.1.3"
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
