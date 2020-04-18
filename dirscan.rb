class Dirscan < Formula
  desc "Analyse large drives or directories for insights, fast"
  homepage "https://github.com/orf/ptail"
  if OS.mac?
    url "https://github.com/orf/dirscan/releases/download/v0.3.0/dirscan-Darwin-x86_64.tar.gz"
    sha256 "84b242b051eceaff6997b6402bb1a1d92a5f2809b4f1e2a3fa1b358849f3f232"
  elsif OS.linux?
    url "https://github.com/orf/dirscan/releases/download/v0.3.0/dirscan-Linux-x86_64.tar.gz"
    sha256 "eb69ff33d8473654bac102fdbc0003a9ec4d22b80c3a66c2c708b82473450e72"
  end
  version "0.3.0"

  def install
    bin.install "dirscan"
  end

  test do
    system "dirscan", "--version"
  end
end
