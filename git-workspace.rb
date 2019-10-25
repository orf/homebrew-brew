class GitWorkspace < Formula
  desc "Mirror your local git repositories from multiple providers"
  homepage "https://github.com/orf/git-workspace"
  if OS.mac?
    url "https://github.com/orf/git-workspace/releases/download/v0.1.12/git-workspace-Darwin-x86_64.tar.gz"
    sha256 "3d1d7027be7e4614a7dbceed64466efc3c0cee0556983a67b43a35b1c69156d0"
  elsif OS.linux?
    url "https://github.com/orf/git-workspace/releases/download/v0.1.12/git-workspace-Linux-x86_64.tar.gz"
    sha256 "7710f4e44b2650e76c9169f010ef8e728d49d4f94d0162fdd61a798b302cbb9c"
  end
  version "0.1.12"

  def install
    bin.install "git-workspace"
  end

  test do
    system "git", "workspace", "--version"
  end
end
