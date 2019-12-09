class DeterministicZip < Formula
  desc "Deterministic zipfiles, with Rust "
  homepage "https://github.com/orf/deterministic-zip"
  if OS.mac?
    url "https://github.com/orf/deterministic-zip/releases/download/v0.0.1/deterministic-zip-Darwin-x86_64.tar.gz"
    sha256 "250c6908991caca707e8d55abf5232111c9af1655e49a4c38e49f04b5c7571f5"
  elsif OS.linux?
    url "https://github.com/orf/deterministic-zip/releases/download/v0.0.1/deterministic-zip-Linux-x86_64.tar.gz"
    sha256 "a8553f8239714ea5ef78123a9273923b360d0d15298cba0b1cfd8a68d217305e"
  end
  version "0.0.1"

  def install
    bin.install "deterministic-zip"
  end

  test do
    system "deterministic-zip", "--version"
  end
end
