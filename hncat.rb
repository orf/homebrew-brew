class Hncat < Formula
  desc "Grab all Hacker News stores + comments, quickly. "
  homepage "https://github.com/orf/hncat"
  if OS.mac?
    url "https://github.com/orf/hncat/releases/download/v0.1.3/hncat-Darwin-x86_64.tar.gz"
    sha256 "0d8198f569d3bd294dcc036fefed0987ab39a28d2666d1080c6541879a3ca24f"
  elsif OS.linux?
    url "https://github.com/orf/hncat/releases/download/v1.1.3/hncat-Linux-x86_64.tar.gz"
    sha256 "e01fa512aaa125df8cf11b848517532e12fd0bbb89174928bbfe796b83ac83ac"
  end
  version "0.1.3"

  def install
    bin.install "hncat"
  end

  test do
    system "hncat", "--version"
  end
end
