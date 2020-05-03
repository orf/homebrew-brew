class GitWorkspace < Formula
  desc "Mirror your local git repositories from multiple providers"
  homepage "https://github.com/orf/git-workspace"
  if OS.mac?
    url "https://github.com/orf/git-workspace/releases/download/v0.6.0/git-workspace-Darwin-x86_64.tar.gz"
    sha256 "0343e5a41cb50a21a1875f2a9e26d7812062cbca6bdec3535a47d45e150b5383"
  elsif OS.linux?
    url "https://github.com/orf/git-workspace/releases/download/v0.6.0/git-workspace-Linux-x86_64.tar.gz"
    sha256 "56d0840fa9562a8be59c31e26e106a18be1dcd15ebc928a56c31c3953149e3a6"
  end
  version "0.6.0"

  def install
    bin.install "git-workspace"
  end

  test do
    system "git", "workspace", "--version"
  end
end
