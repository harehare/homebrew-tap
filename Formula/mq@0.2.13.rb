class Mq < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.13/mq-x86_64-apple-darwin"
    sha256 "f8927b0ebfdf03626b2a0a53f974d4780908b0694e23ccb50687dc3d45b269b0"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.13/mq-aarch64-apple-darwin"
    sha256 "b4c7302769cdd04821c1bca1843a59a51354aa51373debd8b936c1da517acac1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.13/mq-x86_64-unknown-linux-gnu"
    sha256 "dc85710d38ccefb90674f88490fb486b55b7fb74a48a79aabbe112becdab8995"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.13/mq-aarch64-unknown-linux-gnu"
    sha256 "ace96dd935d07df82830758a66cbce2b0d6e7800ae8049b490ba7d6289c74dc2"
  end

  version "0.2.13"
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
