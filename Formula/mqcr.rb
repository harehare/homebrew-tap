class Mqcr < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.5/mqcr-x86_64-apple-darwin"
    sha256 "06871161731b1d45f25ccd3d7b77fecf777e566c7bce65b3b7026c1e5c5205db"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.5/mqcr-aarch64-apple-darwin"
    sha256 "5fec4235d623815898f615516acc33d0c9cd5b9bf7bbefb3199ac6548b7650bd"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.5/mqcr-x86_64-unknown-linux-gnu"
    sha256 "967d7843159c784f450144bb9d42eebb9b26668e6726a0b086d7e7b73691cb8f"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.5/mqcr-aarch64-unknown-linux-gnu"
    sha256 "86dd2ec6f8699db944abaf58294c52d755b28922ff37134aa8f6e8f35d48f345"
  end

  version "0.2.5"
  license "MIT"

  def install
    case
    when OS.mac? && Hardware::CPU.intel?
      bin.install "mqcr-x86_64-apple-darwin" => "mq"
    when OS.mac? && Hardware::CPU.arm?
      bin.install "mqcr-aarch64-apple-darwin" => "mq"
    when OS.linux? && Hardware::CPU.intel?
      bin.install "mqcr-x86_64-unknown-linux-gnu" => "mq"
    when OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      bin.install "mqcr-aarch64-unknown-linux-gnu" => "mq"
    end
  end
end
