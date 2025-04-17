class MqAt010 < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/#{version}/mq-x86_64-apple-darwin"
    sha256 "e17e4ca07a95ae68a17eb345c6d23515c5368920795d13f81fe3caaff928d41b"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/#{version}/mq-aarch64-apple-darwin"
    sha256 "6ff4e6acbd261d821eb3fe1612e98cd5b390e257e14dd471fcd5579ae9ecffa3"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/#{version}/mq-x86_64-unknown-linux-gnu"
    sha256 "14708af8614d0ef519c0ad0e97b7dd6397e0e851d42396012eac50e91686b5c2"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/#{version}/mq-aarch64-unknown-linux-gnu"
    sha256 "942640456140b3c92e99629f7691667d1aad38ffbf5966a5d54da53423ef2a39"
  end

  version "0.1.0"
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
