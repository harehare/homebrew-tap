class Mq < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.3.0/mq-x86_64-apple-darwin"
    sha256 "d0241a4c88fbbb831684ddbec250f5d5cf8135ca311dacb2eacd09479c824575"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.3.0/mq-aarch64-apple-darwin"
    sha256 "527a97fe7377c502b9a67164fa5a9f77c4c12642fe9cc9e545426de854b7452f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.3.0/mq-x86_64-unknown-linux-gnu"
    sha256 "5a1990313fc0b748be48a47cf2fb7f8e0fd0a7d4605d8118b8771bfd2bbe60ec"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.3.0/mq-aarch64-unknown-linux-gnu"
    sha256 "498b9acb7239e339b89553e0557e1b35d0730a2b0a2f607e1f67c63785bef9a0"
  end

  version "0.3.0"
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
