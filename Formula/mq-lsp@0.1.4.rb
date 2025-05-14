class MqLsp@014 < Formula
  desc "mq Language Server Protocol (LSP) Server"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.1.4/mq-lsp-x86_64-apple-darwin"
    sha256 "b89f701e3ac7d7e69e6561780454601037a4cade048f6b5e3f72c4737f3a8e6b"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.1.4/mq-lsp-aarch64-apple-darwin"
    sha256 "7168bf65856b9b17b3340e6e3b9302fb842f61b2c5da1f96e08c5a2cf4efd631"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.1.4/mq-lsp-x86_64-unknown-linux-gnu"
    sha256 "169a5eeb77b919d8401465c459bdd4e37b4cd7be411ce48dc8c4cb64bdb3af5b"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.1.4/mq-lsp-aarch64-unknown-linux-gnu"
    sha256 "5891aa30d92ac51ea73efef97455f36197e032cf9b6193f4bd25e006b19b949d"
  end

  version "0.1.4"
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
