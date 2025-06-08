class Mq < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.2/mq-x86_64-apple-darwin"
    sha256 "6cc5288630928cd46447cfb873096b6c85022db172eaf0948dacb21e27cf3f50"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.2/mq-aarch64-apple-darwin"
    sha256 "eda144cf2d1e88d60bdb8fb704bebd03e07f39a6acd7164e60b499d8f057f7d8"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.2/mq-x86_64-unknown-linux-gnu"
    sha256 "6ee1b234cf653f2f4b556f28a6ce24d519c07c3374b6147a4bc8198f7fed7a9a"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.2/mq-aarch64-unknown-linux-gnu"
    sha256 "9b56b4128a243f88dff0e56bc9f992803cc556cb97c5f0aaebbdc61c9f71d56e"
  end

  version "0.2.2"
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
