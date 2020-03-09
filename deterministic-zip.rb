class DeterministicZip < Formula
  desc "Deterministic zipfiles, with Rust"
  homepage "https://github.com/orf/deterministic-zip"
  if OS.mac?
    url "https://github.com/orf/deterministic-zip/releases/download/v0.0.3/deterministic-zip-Darwin-x86_64.tar.gz"
    sha256 "0eed9e5a5d3709b0b4170454cdef41cb0ae691794753e78b5eb4c83438fedb3e"
  elsif OS.linux?
    url "https://github.com/orf/deterministic-zip/releases/download/v0.0.3/deterministic-zip-Linux-x86_64.tar.gz"
    sha256 "94dd62810a1fad8d100c156540cebd777a2fa71108d54110287d97352ef9d7ae"
  end
  version "0.0.4"

  def install
    bin.install "deterministic-zip"
  end

  test do
    system "deterministic-zip", "--version"
  end
end
