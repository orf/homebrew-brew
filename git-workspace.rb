class GitWorkspace < Formula
  desc "Mirror your local git repositories from multiple providers"
  homepage "https://github.com/orf/git-workspace"
  version "0.1.7"
  url "https://github.com/orf/git-workspace/releases/download/v#{version}/git-workspace-Darwin-x86_64.tar.gz"
  sha256 "36bf59c065dcad98dce593bbdd9fe958a2d77520acfb656ea6e52c2a54ef30d9"

  depends_on "git-lfs"

  def install
    bin.install "git-workspace"
  end

  test do
    system "git", "workspace", "--version"
  end
end
