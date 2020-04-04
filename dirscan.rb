class Ptail < Formula
  desc "A high performance tool for summarizing large directories or drives"
  homepage "https://github.com/orf/ptail"
  if OS.mac?
    url "https://github.com/orf/dirscan/releases/download/v0.1.1/dirscan-Darwin-x86_64.tar.gz"
    sha256 "b954a9d9a7bf1574fb73468221d7bbb54af36bf94c857bbb9dbf0d2adb765564"
  elsif OS.linux?
    url "https://github.com/orf/dirscan/releases/download/v0.1.1/dirscan-Linux-x86_64.tar.gz"
    sha256 "e3d0f389f0a5ee8197bda2b6c8fcc3705382d3ea527961780778270a3915b457"
  end
  version "0.1.1"

  def install
    bin.install "dirscan"
  end

  test do
    system "dirscan", "--version"
  end
end
