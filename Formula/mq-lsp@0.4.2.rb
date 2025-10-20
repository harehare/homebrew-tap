class MqLsp < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.4.2/mq-lsp-x86_64-apple-darwin"
    sha256 "95c0bc3957bdaf410578699178dcf5df47978a9339b76e031f66fc8fdc066e6c"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.4.2/mq-lsp-aarch64-apple-darwin"
    sha256 "9f2a70e2e81e5f43854eb878b8c12a819f95a9890e5d63d9fa084b15814dcc0d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.4.2/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "4806b3b6a97bb879b271668ab9a37cc018d7e93c85f435e1026d382a67549080"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.4.2/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "9c7d3bb13e9b00c14a9e35f29ab2f4e17f5bb5ed680273a6089bbcf71e6dde52"
  end

  version "0.4.2"
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
