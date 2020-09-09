class GitWorkspace < Formula
  desc "Mirror your local git repositories from multiple providers"
  homepage "https://github.com/orf/git-workspace"
  if OS.mac?
  url "https://github.com/orf/git-workspace/releases/download/v0.8.0/git-workspace-Darwin-x86_64.tar.gz"
  sha256 "d6206ff0c923ac6b150c6f41d7d20e2aa205bda6da39019661d98b7bba16fb8c"
  elsif OS.linux?
    url "https://github.com/orf/git-workspace/releases/download/v0.8.0/git-workspace-Linux-x86_64.tar.gz"
    sha256 "94b423c9079e50975ed971d5ad6993fce81000e40c8819212e845df9fbdbbb2a"
  end
  version "0.8.0"

  def install
    bin.install "git-workspace"
  end

  test do
    system "git", "workspace", "--version"
  end
end
