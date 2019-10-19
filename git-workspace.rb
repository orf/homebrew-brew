class GitWorkspace < Formula
  desc "Mirror your local git repositories from multiple providers"
  homepage "https://github.com/orf/git-workspace"
  if OS.mac?
    url "https://github.com/orf/git-workspace/releases/download/v0.1.11/git-workspace-Darwin-x86_64.tar.gz"
    sha256 "c754b3eafe219ab9fbe672c02012e2ffbaeb78af3763017bf388f55a63dd7b59"
  elsif OS.linux?
    url "https://github.com/orf/git-workspace/releases/download/v0.1.11/git-workspace-Linux-x86_64.tar.gz"
    sha256 "8c18876144f76aabbeab4a57986e9c756182c1e7498206f569515e4c7b3cc600"
  end
  version "0.1.11"

  depends_on "git-lfs"

  def install
    bin.install "git-workspace"
  end

  test do
    system "git", "workspace", "--version"
  end
end
