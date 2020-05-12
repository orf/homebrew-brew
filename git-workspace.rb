class GitWorkspace < Formula
  desc "Mirror your local git repositories from multiple providers"
  homepage "https://github.com/orf/git-workspace"
  if OS.mac?
    url "https://github.com/orf/git-workspace/releases/download/v0.6.1/git-workspace-Darwin-x86_64.tar.gz"
    sha256 "5474348430fdd22dac6d261dcbe8a78d0926680b87a31707891afc4a0929fa7e"
  elsif OS.linux?
    url "https://github.com/orf/git-workspace/releases/download/v0.6.1/git-workspace-Linux-x86_64.tar.gz"
    sha256 "1dd62f4739cb3068f5abc00e806a8357c92062e7fc77a28e5155bd1325a00187"
  end
  version "0.6.1"

  def install
    bin.install "git-workspace"
  end

  test do
    system "git", "workspace", "--version"
  end
end
