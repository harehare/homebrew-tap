class Mq < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.1/mq-x86_64-apple-darwin"
    sha256 "87a1453798d1550e3df529a37d3fa73a25b30f40acca1a28a42f16842e9aac59"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.1/mq-aarch64-apple-darwin"
    sha256 "6f028f766958a382d29be3db7173f831a03c97f5f0f296d6e66a0024d91b1baf"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.1/mq-x86_64-unknown-linux-gnu"
    sha256 "773f013f76dc40729cfd2189ffb31f0c34b1ac86a2bc9d9885cf974b911551ed"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.1/mq-aarch64-unknown-linux-gnu"
    sha256 "6f2e2699fb5247d23e5509e0d795a1a2bef6d45d41aef074952a753e38fab780"
  end

  version "0.2.1"
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
