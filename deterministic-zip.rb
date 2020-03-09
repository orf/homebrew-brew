class DeterministicZip < Formula
  desc "Deterministic zipfiles, with Rust"
  homepage "https://github.com/orf/deterministic-zip"
  if OS.mac?
    url "https://github.com/orf/deterministic-zip/releases/download/v0.0.1/deterministic-zip-Darwin-x86_64.tar.gz"
    sha256 "e35a9b44bddd3df02115d786159fea3a8ecea3354a9e580644d6b1968ce861bf"
  elsif OS.linux?
    url "https://github.com/orf/deterministic-zip/releases/download/v0.0.1/deterministic-zip-Linux-x86_64.tar.gz"
    sha256 "c261748892bbf7d0cb7add9a814cf9792cfd8c00272b8630d3233f0186452dd3"
  end
  version "0.0.3"

  def install
    bin.install "deterministic-zip"
  end

  test do
    system "deterministic-zip", "--version"
  end
end
