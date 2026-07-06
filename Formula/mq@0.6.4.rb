class MqAT064 < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.0/mq-x86_64-apple-darwin"
    sha256 "5b044861f1e087c05be5634ae1490641653db9b00722bd7df69a1a329df5d000"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.6.4/mq-aarch64-apple-darwin"
    sha256 "e0fed6f9d2f0fbd85973b3c005cb52e14bee8030dfd383a4833ee3b78c09112c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.6.4/mq-x86_64-unknown-linux-gnu"
    sha256 "cf3281b44653cbdce958f087a049eff67761cd98ae9a783788a9649e86159219"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.6.4/mq-aarch64-unknown-linux-gnu"
    sha256 "11a9fc80a8ed583e838da267d90f45f52181bea82550440ac970eb5c8777dc6e"
  end

  version "0.6.4"
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
