class Gping < Formula
  desc "Ping, but with a graph."
  homepage "https://github.com/orf/gping"
  if OS.mac?
    url "https://github.com/orf/gping/releases/download/v0.1.6/gping-Darwin-x86_64.tar.gz"
    sha256 "52887b7bed78afe253a8c514e43d8825f4707897a5cb081cc0c30fc5e78d97e5"
  elsif OS.linux?
    url "https://github.com/orf/gping/releases/download/v0.1.6/gping-Linux-x86_64.tar.gz"
    sha256 "167d6d534c218ffa4a8b4e8db9bf9d58fc2ccf5dd38931a7349913acea4164b6"
  end
  version "0.1.6"

  def install
    bin.install "gping"
  end

  test do
    system "gping", "--version"
  end
end
