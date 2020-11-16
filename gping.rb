class Gping < Formula
  desc "Ping, but with a graph."
  homepage "https://github.com/orf/gping"
  if OS.mac?
    url "https://github.com/orf/gping/releases/download/v0.1.7/gping-Darwin-x86_64.tar.gz"
    sha256 "e9349400bc747cecd73f02ed0ff823aee1b1cf552ee13f88f147bc91b51e869d"
  elsif OS.linux?
    url "https://github.com/orf/gping/releases/download/v0.1.7/gping-Linux-x86_64.tar.gz"
    sha256 "fd9b16d18aa52ab003f7f0dc8d2e78bde3fade26a852b25f8a9bde340f8d031a"
  end
  version "0.1.7"

  def install
    bin.install "gping"
  end

  test do
    system "gping", "--version"
  end
end
