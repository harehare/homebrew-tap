class MqDbg < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.22/mq-dbg-x86_64-apple-darwin"
    sha256 "29fcc3df19231c0cc567bbd15639ca9c655410fba67dc8beaabdc8f96991a372"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.5.26/mq-dbg-aarch64-apple-darwin"
    sha256 "56cebb218815707d5ff43fb5c2ca3b1847ec1d7d220e667552bacbdd643e41d7"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.26/mq-dbg-x86_64-unknown-linux-gnu"
    sha256 "21ecb4eeafb56d7d1958909b5d271bf03b981b4e16c6a3245ea9026d45f9ec0d"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.5.26/mq-dbg-aarch64-unknown-linux-gnu"
    sha256 "3518ab923f7cab5adc3ef1cb6f1c3d290c85f82fcca49666538ff96245ea94c4"
  end

  version "0.5.26"
  license "MIT"

  def install
    case
    when OS.mac? && Hardware::CPU.intel?
      bin.install "mq-dbg-x86_64-apple-darwin" => "mq"
    when OS.mac? && Hardware::CPU.arm?
      bin.install "mq-dbg-aarch64-apple-darwin" => "mq"
    when OS.linux? && Hardware::CPU.intel?
      bin.install "mq-dbg-x86_64-unknown-linux-gnu" => "mq"
    when OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      bin.install "mq-dbg-aarch64-unknown-linux-gnu" => "mq"
    end
  end
end
