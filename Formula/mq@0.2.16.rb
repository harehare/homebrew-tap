class Mq < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.16/mq-x86_64-apple-darwin"
    sha256 "b2bd2179b18dc007c882be926b3a520aad04bdcb801e91b99987f2e39173a3b9"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.16/mq-aarch64-apple-darwin"
    sha256 "174d21d637e578023487e5f4eabb3457080ea030eb309d1cc489b72a47e62606"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.16/mq-x86_64-unknown-linux-gnu"
    sha256 "f961fa518eecee0ea9567a5319446615d2ea5870c5a3837be477d9a000fe88b0"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.16/mq-aarch64-unknown-linux-gnu"
    sha256 "66342564d62011f90aecf198f70be5f2834a795d55ea4ab14b3075ea5a2f3984"
  end

  version "0.2.16"
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
