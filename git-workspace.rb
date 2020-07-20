class GitWorkspace < Formula
  desc "Mirror your local git repositories from multiple providers"
  homepage "https://github.com/orf/git-workspace"
  if OS.mac?
    url "https://github.com/orf/git-workspace/releases/download/v0.7.0/git-workspace-Darwin-x86_64.tar.gz"
    sha256 "8118d4d71993505685dd0a2b2ec1b704e4a92235785a085526ccb4dba0567c8d"
  elsif OS.linux?
    url "https://github.com/orf/git-workspace/releases/download/v0.7.0/git-workspace-Linux-x86_64.tar.gz"
    sha256 "a1ce0eb19d10bb56d28cbec3135e4cdbadbbdef39925414898cabd99beff7963"
  end
  version "0.7.0"

  def install
    bin.install "git-workspace"
  end

  test do
    system "git", "workspace", "--version"
  end
end
