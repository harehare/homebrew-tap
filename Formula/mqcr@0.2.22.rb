class Mqcr < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.22/mqcr-x86_64-apple-darwin"
    sha256 "77be6ad2958a00fa8157f87936a041afd9669bfe7051724e1a18c13f353886af"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.22/mqcr-aarch64-apple-darwin"
    sha256 "3b24558cc61a65ea05b78dbb93420f11e3dcbe045fd5ca184d7d295a5baabee6"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.22/mqcr-x86_64-unknown-linux-gnu"
    sha256 "519a54f60004139072ee74db54af9aee4b5925662af9a1071585f7e68767edaf"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.22/mqcr-aarch64-unknown-linux-gnu"
    sha256 "ab1e1e88ebcb4364d06bed51b6294ccf17a7e545315c33383d68c62989a7c80a"
  end

  version "0.2.22"
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
