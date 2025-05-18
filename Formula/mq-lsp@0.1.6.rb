class MqLsp@016 < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.1.6/mq-lsp-x86_64-apple-darwin"
    sha256 "bb33818603ab435180c92956841966eb647276cc55f719155c040a69f9d6b3de"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.1.6/mq-lsp-aarch64-apple-darwin"
    sha256 "6f5a909c39ce2da01c67bd191189025ecec8dc988a94863c13408bee5190c9e9"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.1.6/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "fec4f30e27d4bc8d4d628c59392a9ca5b07e575fbabe2a0d3b1474475c41ee36"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.1.6/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "8468b191ac223d6fac1eab05a82f9ad7d8187926324f3ae32367d1f7e3e3bbad"
  end

  version "0.1.6"
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
