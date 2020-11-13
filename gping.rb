class Gping < Formula
  desc "Ping, but with a graph."
  homepage "https://github.com/orf/gping"
  if OS.mac?
    url "https://github.com/orf/gping/releases/download/v0.1.5/gping-Darwin-x86_64.tar.gz"
    sha256 "c92d74c65e9038202d9cf6c07f011236ad250e65c2eb19e4677a795b4d9d8273"
  elsif OS.linux?
    url "https://github.com/orf/gping/releases/download/v0.1.5/gping-Linux-x86_64.tar.gz"
    sha256 "fd56dd90a5785c0ca4ce1f46e50b0d709a75fcf7a161174bebfcbc110c8fe2da"
  end
  version "0.1.5"

  def install
    bin.install "gping"
  end

  test do
    system "gping", "--version"
  end
end
