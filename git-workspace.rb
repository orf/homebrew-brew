class GitWorkspace < Formula
  desc "Mirror your local git repositories from multiple providers"
  homepage "https://github.com/orf/git-workspace"
  if OS.mac?
    url "https://github.com/orf/git-workspace/releases/download/v0.1.10/git-workspace-Darwin-x86_64.tar.gz"
    sha256 "789eaeb7af147e30ca07b3ad8e267b8b2252d801979a86a89e3db03218b5ef14"
  elsif OS.linux?
    url "https://github.com/orf/git-workspace/releases/download/v0.1.10/git-workspace-Linux-x86_64.tar.gz"
    sha256 "e25095c5dddeef5136834f5b3171ccea125410bd6a4869eac4d61d3dbf05679d"
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
