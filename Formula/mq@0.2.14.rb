class Mq < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.14/mq-x86_64-apple-darwin"
    sha256 "790a7a8f01717b31ac308c5e0a6d1f99af913db2fa725613e769b2d5837752aa"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.14/mq-aarch64-apple-darwin"
    sha256 "896f86d101bcaa423ea9793f022f897a09220d1cdd64430efbf3b903b004c240"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.14/mq-x86_64-unknown-linux-gnu"
    sha256 "1c6a0c2bbc46aac601c3e49e9549e8e12bff64b04c381a8b46a0cb9adf275fea"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.14/mq-aarch64-unknown-linux-gnu"
    sha256 "d6a592bf3cb9b9d6630efe5ab10072f6ed8df57d7bf771398ea84c36eba44ee2"
  end

  version "0.2.14"
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
