class HnCat < Formula
  desc "Grab all Hacker News stores + comments, quickly. "
  homepage "https://github.com/orf/hncat"
  if OS.mac?
    url "https://github.com/orf/hncat/releases/download/v0.1.1/hncat-Darwin-x86_64.tar.gz"
    sha256 "7d45f2eeee2f5a3808d543ddd6d073bc5f1f6620aadeca959070f0d7a0c1de9d"
  elsif OS.linux?
    url "https://github.com/orf/hncat/releases/download/v1.1.1/hncat-Linux-x86_64.tar.gz"
    sha256 "6cd707ff8e96e9889a0a83fcf349ef751d71ceef6c2e51905b86bf5a5e0a036a"
  end
  version "0.1.1"

  def install
    bin.install "hncat"
  end

  test do
    system "hncat", "--version"
  end
end
