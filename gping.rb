class Gping < Formula
  desc "Ping, but with a graph."
  homepage "https://github.com/orf/gping"
  if OS.mac?
    url "https://github.com/orf/gping/releases/download/v0.1.4/gping-Darwin-x86_64.tar.gz"
    sha256 "696fa1da20c07ff6480769bd65dad8ab10372864d7bbcc8c33a24ce23bfd2d52"
  elsif OS.linux?
    url "https://github.com/orf/gping/releases/download/v0.1.4/gping-Linux-x86_64.tar.gz"
    sha256 "b0329e7affbb58445e3dd5a6e31d66f7dcbe81eadaf134bd0e75ba89c9026214"
  end
  version "0.1.4"

  def install
    bin.install "gping"
  end

  test do
    system "gping", "--version"
  end
end
