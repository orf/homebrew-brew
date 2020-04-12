class Dirscan < Formula
  desc "Analyse large drives or directories for insights, fast"
  homepage "https://github.com/orf/ptail"
  if OS.mac?
    url "https://github.com/orf/dirscan/releases/download/v0.3.0/dirscan-Darwin-x86_64.tar.gz"
    sha256 "3b35fcaf6482fc3be134bfb9d20f719969420ca85406a9db99a500b1e4cb4600"
  elsif OS.linux?
    url "https://github.com/orf/dirscan/releases/download/v0.3.0/dirscan-Linux-x86_64.tar.gz"
    sha256 "ade06c671c654aa75a006ce233bb0ce89258d053c9c78ddae212207e89718624"
  end
  version "0.3.0"

  def install
    bin.install "dirscan"
  end

  test do
    system "dirscan", "--version"
  end
end
