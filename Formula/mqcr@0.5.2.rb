class Mqcr < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.0/mqcr-x86_64-apple-darwin"
    sha256 "c59036b4205ec80686f0c036f2fd48a3b49d6c997c57bd62bcd1b2bdc0930d5d"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.5.2/mqcr-aarch64-apple-darwin"
    sha256 "2fab17dc80c8ad2fd727467b1a0ba2580d5e34f6dd8de48e210a6f169bbe8f0e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.2/mqcr-x86_64-unknown-linux-gnu"
    sha256 "0628ca91b509ca6fc37a9cd1f2d51bc9f41ca573eb314e1c069d6638d49049b8"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.5.2/mqcr-aarch64-unknown-linux-gnu"
    sha256 "76c9f3943e1e4423b43d06ef35d6bd5a0ff78ee278bae12dc059da4227a9ad0a"
  end

  version "0.5.2"
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
