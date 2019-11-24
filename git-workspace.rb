class GitWorkspace < Formula
  desc "Mirror your local git repositories from multiple providers"
  homepage "https://github.com/orf/git-workspace"
  if OS.mac?
    url "https://github.com/orf/git-workspace/releases/download/v0.3.0/git-workspace-Darwin-x86_64.tar.gz"
    sha256 "b1341dcffcf6da0d6989aab0e48644d7b18d4e3a2f73b7780fbef09bd120d2bc"
  elsif OS.linux?
    url "https://github.com/orf/git-workspace/releases/download/v0.3.0/git-workspace-Linux-x86_64.tar.gz"
    sha256 "0ca82b44e5cd43864ed6e3e19065e95107ef6726dcff4ebc788b247aeeaf90a2"
  end
  version "0.3.0"

  def install
    bin.install "git-workspace"
  end

  test do
    system "git", "workspace", "--version"
  end
end
