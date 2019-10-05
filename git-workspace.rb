class GitWorkspace < Formula
  desc "Mirror your local git repositories from multiple providers"
  homepage "https://github.com/orf/git-workspace"
  url "https://github.com/orf/git-workspace/releases/download/v0.1.7/git-workspace-Darwin-x86_64.tar.gz"
  version "0.1.8"
  sha256 "eb5bacd71cddc05d7fdda1986f6a3fa4f8c019cd28fbfe91b42c1c10b022eae6"

  depends_on "git-lfs"

  def install
    bin.install "git-workspace"
  end

  test do
    system "git", "workspace", "--version"
  end
end
