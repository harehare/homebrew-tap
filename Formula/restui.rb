class Restui < Formula
  desc "a CLI tool that can send HTTP requests with TUI."
  homepage "https://github.com/harehare/restui"
  url "https://github.com/harehare/restui/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "b8136731611d34fbd26ed608be4f90bd0bee2a07979217dbde721119435e438d"
  license "MIT"

  depends_on "sbt" => :build
  depends_on "openjdk"

  def install
    system('sbt', 'assembly')
    libexec.install Dir["**/restui.jar"]
    bin.write_jar_script libexec/"restui.jar", "restui"
  end

  test do
    system "false"
  end
end
