class MqCrawl < Formula
  desc "A jq-like command-line tool for Markdown processing"
  homepage "https://github.com/harehare/mq"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/harehare/mq/releases/download/v0.5.24/mq-crawl-aarch64-apple-darwin"
    sha256 "a484e931efebe4b8566b735a1fbeb267b56828ffe96796b4172ed8d084944d17"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/harehare/mq/releases/download/v0.5.24/mq-crawl-x86_64-unknown-linux-gnu"
    sha256 "ad914d1e3920037c023a9ef923c2c440d3d2faeeed13a92b80633b4ad4fa9755"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/harehare/mq/releases/download/v0.5.24/mq-crawl-aarch64-unknown-linux-gnu"
    sha256 "eb4976dd29abc2db984bf31881c9dd52256020a6b653f71509747579e7dd793c"
  end

  version "0.5.24"
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
