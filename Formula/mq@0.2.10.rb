class Mq < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.10/mq-x86_64-apple-darwin"
    sha256 "c405c9f7c576e9b546399f08b60825c90c19b6b9ba8541fa5ad4f686daea5916"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.10/mq-aarch64-apple-darwin"
    sha256 "c4ac21ead4a49c95c1f59ddd5943dcee8dd4704590fb308c6e34686af90d8618"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.10/mq-x86_64-unknown-linux-gnu"
    sha256 "3c76d96368ca1cf8927a0f34bb6da3c195cfc265b6386912f4565b2d705739b9"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.10/mq-aarch64-unknown-linux-gnu"
    sha256 "c5b21b0791bcc166a0aa89cefde570423170a9a907a7f1140433321517a5ef23"
  end

  version "0.2.10"
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
