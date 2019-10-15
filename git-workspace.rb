class GitWorkspace < Formula
  desc "Mirror your local git repositories from multiple providers"
  homepage "https://github.com/orf/git-workspace"
  if OS.mac?
    url "https://github.com/orf/git-workspace/releases/download/v0.1.9/git-workspace-Darwin-x86_64.tar.gz"
    sha256 "687440a23a0978e05fa20fc554ae95dddc43ffd288fae41042a13875fef15d84"
  elsif OS.linux?
    url "https://github.com/orf/git-workspace/releases/download/v0.1.9/git-workspace-Linux-x86_64.tar.gz"
    sha256 "dd4af56d435656f3609d0f7fa4e4dee6fa9e74b5ee295f3ced4eee4ede8a4c11"
  end
  version "0.1.9"

  depends_on "git-lfs"

  def install
    bin.install "git-workspace"
  end

  test do
    system "git", "workspace", "--version"
  end
end
