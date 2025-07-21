class Mq < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.12/mq-x86_64-apple-darwin"
    sha256 "268f5533ce6e642b1493f941726fa0861e7272ebb40055192175c4d5e598ab9b"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.12/mq-aarch64-apple-darwin"
    sha256 "69201c8d21dbfbad4420883119d0b150594950e1386da5fa907c30161c88208a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.12/mq-x86_64-unknown-linux-gnu"
    sha256 "39df85cb520cde70073b66c8b6ac06485e0fd2d4d6d730e92aa19983e7194244"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.12/mq-aarch64-unknown-linux-gnu"
    sha256 "78a6c0823da01c3354d49c763536bf67cf3c8a5a5228df164e670768c933fd4b"
  end

  version "0.2.12"
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
