class Mq < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.20/mq-x86_64-apple-darwin"
    sha256 "6c460378150bc2122a867fb131afee43e2befd8e29e5fa8737ac513bf9aa6e30"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.2.20/mq-aarch64-apple-darwin"
    sha256 "7e6847671834dd4b69cc6c2b9ec9ddf49b8ff06de25fd33fb749d745bcfd65a6"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.2.20/mq-x86_64-unknown-linux-gnu"
    sha256 "063bcc018bd459efa60a01777397fdc6c01b0983032fb80c1db13686f0a58274"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.2.20/mq-aarch64-unknown-linux-gnu"
    sha256 "63695fc92e6328eaf4fe58028502607cae435cbe2c34cdba9d90748e90bb46d2"
  end

  version "0.2.20"
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
