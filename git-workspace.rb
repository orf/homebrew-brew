class GitWorkspace < Formula
  desc "Mirror your local git repositories from multiple providers"
  homepage "https://github.com/orf/git-workspace"
  url "https://github.com/orf/git-workspace/releases/download/v0.1.9/git-workspace-Darwin-x86_64.tar.gz"
  version "0.1.9"
  sha256 "687440a23a0978e05fa20fc554ae95dddc43ffd288fae41042a13875fef15d84"

  depends_on "git-lfs"

  def install
    bin.install "git-workspace"
  end

  test do
    system "git", "workspace", "--version"
  end
end
