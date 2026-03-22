class MqLsp < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.0/mq-lsp-x86_64-apple-darwin"
    sha256 "fb526e79e120116bbb60d48d1f4284edd73546e6913f97bf316f6b9dd89e7055"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.5.22/mq-lsp-aarch64-apple-darwin"
    sha256 "a50599726efb433910a44ea321af0d28e2ab81fb1598968c20b3af32ea30167c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.22/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "495ad6f3ec904dac8baabe12143bb4e4881d962ded5944c4063f70d3a876c2a7"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.5.22/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "e637f312cc06fce67b01249c902812975f0d200c216b1247063471163262f2eb"
  end

  version "0.5.22"
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
