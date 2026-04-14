class MqCrawl < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.5.26/mq-crawl-aarch64-apple-darwin"
    sha256 "4db98052742b68ea5ba313e87974754a3d51fd5cc8d9d0646483bc1281c1f571"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.26/mq-crawl-x86_64-unknown-linux-gnu"
    sha256 "f04483dcc039c6957b2ab6a387497fa32b13b522cac18b8d656df0ab3fac583f"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.5.26/mq-crawl-aarch64-unknown-linux-gnu"
    sha256 "d11d1c7933867a7aa357f44683a5e635704e57a5f2d1effcd2a0699e07288192"
  end

  version "0.5.26"
  license "MIT"

  def install
    case
    when OS.mac? && Hardware::CPU.arm?
      bin.install "mq-crawl-aarch64-apple-darwin" => "mq-crawl"
    when OS.linux? && Hardware::CPU.intel?
      bin.install "mq-crawl-x86_64-unknown-linux-gnu" => "mq-crawl"
    when OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      bin.install "mq-crawl-aarch64-unknown-linux-gnu" => "mq-crawl"
    end
  end
end
