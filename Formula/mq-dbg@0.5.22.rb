class MqDbg < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.22/mq-dbg-x86_64-apple-darwin"
    sha256 "29fcc3df19231c0cc567bbd15639ca9c655410fba67dc8beaabdc8f96991a372"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.5.22/mq-dbg-aarch64-apple-darwin"
    sha256 "44b8ad25505e2989dba54fe7f7bb19b3126eabb43e9077027b90830059da19f2"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.22/mq-dbg-x86_64-unknown-linux-gnu"
    sha256 "dda7020b8fb2ee2296f48dc24145ce6168b46049b6cd6d60a0dbfa64b276118f"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.5.22/mq-dbg-aarch64-unknown-linux-gnu"
    sha256 "ca729703da37803e74fcf86c1130667bc78adce562b3a758324491ca4fd31d02"
  end

  version "0.5.22"
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
