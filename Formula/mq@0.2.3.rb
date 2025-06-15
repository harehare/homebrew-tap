class Mq < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.3/mq-x86_64-apple-darwin"
    sha256 "e411fee5820a43e77bac0f8056b9c46c97b4545ba71c8f432d04576b970598fd"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.3/mq-aarch64-apple-darwin"
    sha256 "29c1f9268d7feb975abe04214098a7822d96b3510e7c029cb8045d6f4a391aae"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.3/mq-x86_64-unknown-linux-gnu"
    sha256 "71cc16aa37fdfb7d317c9456093d47a97aa2ff2c371728acb05b1532c1a0526a"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.3/mq-aarch64-unknown-linux-gnu"
    sha256 "9bd9e5494c5fda7c58e3f661ab366bc98244b9802c4455d7a074377cc61507db"
  end

  version "0.2.3"
  license "MIT"

  def install
    case
    when OS.mac? && Hardware::CPU.intel?
      bin.install "mq-x86_64-apple-darwin" => "mq"
    when OS.mac? && Hardware::CPU.arm?
      bin.install "mq-aarch64-apple-darwin" => "mq"
    when OS.linux? && Hardware::CPU.intel?
      bin.install "mq-x86_64-unknown-linux-gnu" => "mq"
    when OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      bin.install "mq-aarch64-unknown-linux-gnu" => "mq"
    end
  end
end
