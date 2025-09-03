class Mqcr < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.21/mqcr-x86_64-apple-darwin"
    sha256 "78e15ccd7d8a79a4c2f38283286b96b10957e2846c8aa9d6c9f7810417035807"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.21/mqcr-aarch64-apple-darwin"
    sha256 "8769ef23ec755856e15a8b1f1c2d13add2317490e83de0e9340560acd08ca368"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.21/mqcr-x86_64-unknown-linux-gnu"
    sha256 "74825ae60b86839657ee3cd284046237194cbe35bb7824895c453a8dad948520"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.21/mqcr-aarch64-unknown-linux-gnu"
    sha256 "f07f23450179561bff6db52ad5b9b1ff3e00b0bb6157073f61717ca8f7e46b1a"
  end

  version "0.2.21"
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
