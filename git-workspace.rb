class GitWorkspace < Formula
  desc "Mirror your local git repositories from multiple providers"
  homepage "https://github.com/orf/git-workspace"
  if OS.mac?
    url "https://github.com/orf/git-workspace/releases/download/v0.5.1/git-workspace-Darwin-x86_64.tar.gz"
    sha256 "1c62f3558bbd34a06799de35954fcce9c07a4f574c71e9822fb5c78fe5fea72f"
  elsif OS.linux?
    url "https://github.com/orf/git-workspace/releases/download/v0.5.1/git-workspace-Linux-x86_64.tar.gz"
    sha256 "aa5c84862d87998f21be538cc42edf15194f7a0124249518df91ddf188c4d24e"
  end
  version "0.5.1"

  def install
    bin.install "git-workspace"
  end

  test do
    system "git", "workspace", "--version"
  end
end
