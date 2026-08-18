class MqAT083 < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.0/mq-x86_64-apple-darwin"
    sha256 "5b044861f1e087c05be5634ae1490641653db9b00722bd7df69a1a329df5d000"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.8.3/mq-aarch64-apple-darwin"
    sha256 "074d7910bdcdd957f367878d4f26feebe442dd7c4a5e8dbbcdd3e16eddbc911c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.8.3/mq-x86_64-unknown-linux-gnu"
    sha256 "a5fbcb679f6061fe9dbff888698ec0436a02353335fe124344bdc4a1bf1d0af5"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.8.3/mq-aarch64-unknown-linux-gnu"
    sha256 "79dbdb250e86a527689d1806062628b3371347b7ac8106087745c070f326d107"
  end

  version "0.8.3"
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
