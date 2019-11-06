class GitWorkspace < Formula
  desc "Mirror your local git repositories from multiple providers"
  homepage "https://github.com/orf/git-workspace"
  if OS.mac?
    url "https://github.com/orf/git-workspace/releases/download/v0.2.2/git-workspace-Darwin-x86_64.tar.gz"
    sha256 "e8b3aa0b19d8d8566fae02283cc8d9db07be670cdf29ed7e6f0a8995630d8c53"
  elsif OS.linux?
    url "https://github.com/orf/git-workspace/releases/download/v0.2.2/git-workspace-Linux-x86_64.tar.gz"
    sha256 "c3073a75b6e87b8817ed5e1aaef357ebd296e7ff77522249f7f5e7baeb11a62e"
  end
  version "0.2.0"

  def install
    bin.install "git-workspace"
  end

  test do
    system "git", "workspace", "--version"
  end
end
