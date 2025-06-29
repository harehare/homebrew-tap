class Mq < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.7/mq-x86_64-apple-darwin"
    sha256 "e886a28603b923507ec8738ae97bb0700e701638a45167c7bf203695988d358c"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.7/mq-aarch64-apple-darwin"
    sha256 "10f5aaae577c4e06446341f12f57bcabd219a7707ada33183adb958125c6e7f8"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.7/mq-x86_64-unknown-linux-gnu"
    sha256 "074bdaba2df4654e51fb3431bf55c92bf032264214eb45ea9a307524fb3375f3"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.7/mq-aarch64-unknown-linux-gnu"
    sha256 "63e26b7bf0604fea3623fe857428f20275133fa6080ff21802a8ac5834a978fe"
  end

  version "0.2.7"
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
