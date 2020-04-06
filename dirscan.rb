class Dirscan < Formula
  desc "Analyse large drives or directories for insights, fast"
  homepage "https://github.com/orf/ptail"
  if OS.mac?
    url "https://github.com/orf/dirscan/releases/download/v0.2.0/dirscan-Darwin-x86_64.tar.gz"
    sha256 "97f9170fa7fc1b3e9fdd72b11c200f4801ecfb7ec5af5198c998d5dbc046ca18"
  elsif OS.linux?
    url "https://github.com/orf/dirscan/releases/download/v0.2.0/dirscan-Linux-x86_64.tar.gz"
    sha256 "c8bacb27c5ea4a1fd43907323bdd6f67bff4f29b2e3e3ce10f553378bcb9b516"
  end
  version "0.2.0"

  def install
    bin.install "dirscan"
  end

  test do
    system "dirscan", "--version"
  end
end
