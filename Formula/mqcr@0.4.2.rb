class Mqcr < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.4.2/mqcr-x86_64-apple-darwin"
    sha256 "a2b677bd534a82a7ac8a0de6c9b0adbd71a5dc7101029175df4781ca0659232d"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.4.2/mqcr-aarch64-apple-darwin"
    sha256 "25752acec02b8be3bc46ff74ba28f2ac0dbbcae918125d66fe535b972bea69ab"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.4.2/mqcr-x86_64-unknown-linux-gnu"
    sha256 "06b6bb4671d38928335723d0859db64aca57c1a56405a85c958e3b80f4f97954"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.4.2/mqcr-aarch64-unknown-linux-gnu"
    sha256 "d7234352e05a5eb5196a90a9074bbea860afa06dd1e59d9e76c4d8346d885606"
  end

  version "0.4.2"
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
