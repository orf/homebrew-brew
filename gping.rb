class GPing < Formula
  desc "Ping, but with a graph."
  homepage "https://github.com/orf/gping"
  if OS.mac?
    url "//github.com/orf/gping/releases/download/v0.1.1/gping-Darwin-x86_64.tar.gz"
    sha256 "8c36f649920d1d0656cbb0be29124660a6d258569400b87fa6c580f327cb98c9"
  elsif OS.linux?
    url "//github.com/orf/gping/releases/download/v0.1.1/gping-Linux-x86_64.tar.gz"
    sha256 "ef99e801d921b4f5932709a987dcd691057fe973b823dce42ec752247ff25570"
  end
  version "0.1.1"

  def install
    bin.install "gping"
  end

  test do
    system "gping", "--version"
  end
end
