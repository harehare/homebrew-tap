class Mq < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.4.1/mq-x86_64-apple-darwin"
    sha256 "24ece1d71e3ff111ab24ebfaf52444e5302b7f6d3de016c41837a6bbd5b131ff"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.4.1/mq-aarch64-apple-darwin"
    sha256 "4176048dd867083860dd8ea51bfca823ad0673b286f82deebd9c9b0e5503f020"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.4.1/mq-x86_64-unknown-linux-gnu"
    sha256 "0031f4aedfad76c8addff71ae740352e55eaa9f8e834a72d40a20f1a4209610e"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.4.1/mq-aarch64-unknown-linux-gnu"
    sha256 "ff3322409d43fb0c31a0bd27e9235f5c1ec20ffc242f6c804c0dbbe07fe50107"
  end

  version "0.4.1"
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
