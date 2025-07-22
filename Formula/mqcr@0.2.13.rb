class Mqcr < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.13/mqcr-x86_64-apple-darwin"
    sha256 "b8d94e04e530466bae5ceebc17666f2076ce33d32537a69e0280d54cf15f1822"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.13/mqcr-aarch64-apple-darwin"
    sha256 "2cb714e41bb94116c2b93b307121aef6f98b7ece77157051951ae011914663ea"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.13/mqcr-x86_64-unknown-linux-gnu"
    sha256 "a38fb2cb2c94c17842bd54024dad86342df2191d2b7ae694fe36538505ff4d44"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.13/mqcr-aarch64-unknown-linux-gnu"
    sha256 "976e54977b9dff4fdf49caf7cb4450153c6f5c6baa3a818b3053ac89cc069e41"
  end

  version "0.2.13"
  license "MIT"

  def install
    case
    when OS.mac? && Hardware::CPU.intel?
      bin.install "mqcr-x86_64-apple-darwin" => "mqcr"
    when OS.mac? && Hardware::CPU.arm?
      bin.install "mqcr-aarch64-apple-darwin" => "mqcr"
    when OS.linux? && Hardware::CPU.intel?
      bin.install "mqcr-x86_64-unknown-linux-gnu" => "mqcr"
    when OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      bin.install "mqcr-aarch64-unknown-linux-gnu" => "mqcr"
    end
  end
end
