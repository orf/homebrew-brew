class Ptail < Formula
  desc "Stream and display a fixed number of lines from a processes output"
  homepage "https://github.com/orf/ptail"
  if OS.mac?
    url "https://github.com/orf/ptail/releases/download/v0.2.0/ptail-Darwin-x86_64.tar.gz"
    sha256 "c8baa911c20b8716b6c767303dee444aabca7bb8ee6ab61af8cf5809fdd0e53d"
  elsif OS.linux?
    url "https://github.com/orf/ptail/releases/download/v0.2.0/ptail-Linux-x86_64.tar.gz"
    sha256 "fbd3f718721bc9c15efdab9669ddbcc23976cc3165ca3820c9efbd2e91e3626a"
  end
  version "0.2.0"

  def install
    bin.install "ptail"
  end

  test do
    system "ptail", "--version"
  end
end
