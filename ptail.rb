class Ptail < Formula
  desc "Stream and display a fixed number of lines from a processes output"
  homepage "https://github.com/orf/ptail"
  if OS.mac?
    url "https://github.com/orf/ptail/releases/download/v0.2.1/ptail-Darwin-x86_64.tar.gz"
    sha256 "5eb20bf0070fc54a25cfc5b7e1cb4fb32272dd7bd5da4021a0b9c01ce45e6c3d"
  elsif OS.linux?
    url "https://github.com/orf/ptail/releases/download/v0.2.1/ptail-Linux-x86_64.tar.gz"
    sha256 "2cd9f27a7c0af40eb997a413bdca3833275490debde641799d5733130af13bbf"
  end
  version "0.2.1"

  def install
    bin.install "ptail"
  end

  test do
    system "ptail", "--version"
  end
end
