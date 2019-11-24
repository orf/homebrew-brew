class GitWorkspace < Formula
  desc "Mirror your local git repositories from multiple providers"
  homepage "https://github.com/orf/git-workspace"
  if OS.mac?
    url "https://github.com/orf/git-workspace/releases/download/v0.4.1/git-workspace-Darwin-x86_64.tar.gz"
    sha256 "e66f7ecc89451187edb9b856e755612af132e4e10923e6d17bf9c9666eb745ca"
  elsif OS.linux?
    url "https://github.com/orf/git-workspace/releases/download/v0.4.1/git-workspace-Linux-x86_64.tar.gz"
    sha256 "52ae5f5476c5b7b28d55e37764477eeee4fc1c6d1cfe5d6385881c2099e22209"
  end
  version "0.4.1"

  def install
    bin.install "git-workspace"
  end

  test do
    system "git", "workspace", "--version"
  end
end
