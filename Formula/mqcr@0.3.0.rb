class Mqcr < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.3.0/mqcr-x86_64-apple-darwin"
    sha256 "523a37c7c3d4d80d2c3210148619590cee9e64af589ae95957f78aecaf04791c"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.3.0/mqcr-aarch64-apple-darwin"
    sha256 "aa69b036e2b7e0fa3712f4f07ffe7baf758d117e0013a9b84f495b8ff822ea20"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.3.0/mqcr-x86_64-unknown-linux-gnu"
    sha256 "5312f21237bc8cae38a3b6df78f0672cdb330a1eaf351ae5854e04fe8fbf91fa"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.3.0/mqcr-aarch64-unknown-linux-gnu"
    sha256 "c2e0368075a20a8a4d117835455f09c1fda8dc8e91a17666b159c0114b01ecd4"
  end

  version "0.3.0"
  license "MIT"

  def install
    case
    when OS.mac? && Hardware::CPU.intel?
      bin.install "mqcr-x86_64-apple-darwin" => "mqcr"
    when OS.mac? && Hardware::CPU.arm?
      bin.install "mqcr-aarch64-apple-darwin" => "mqcr"
    when OS.linux? && Hardware::CPU.intel?
      bin.install "mqcr-x86_64-unknown-linux-gnu" => "mqcr"
    when OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      bin.install "mqcr-aarch64-unknown-linux-gnu" => "mqcr"
    end
  end
end
