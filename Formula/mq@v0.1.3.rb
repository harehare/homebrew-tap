class Mq@013 < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.1.3/mq-x86_64-apple-darwin"
    sha256 "ef2f969a901823cb41e3ecb90990ade4560752ee9f9ab2a695c7c2e0fbfeb379"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.1.3/mq-aarch64-apple-darwin"
    sha256 "3f3eba6028509c5781d39bb3effa157231f9677c3ea556ca549560f1a6b3639e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.1.3/mq-x86_64-unknown-linux-gnu"
    sha256 "f41466fbf68ac4b1e40e657d107036e6aca9b7de40e7235ec297cf9bace19416"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.1.3/mq-aarch64-unknown-linux-gnu"
    sha256 "4da5fb0dcc7a8889e0ae649995d0843f61d5cd6c86d7fe3536fa0a255eb7982b"
  end

  version "0.1.3"
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
