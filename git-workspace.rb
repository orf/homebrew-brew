class GitWorkspace < Formula
  desc "Mirror your local git repositories from multiple providers"
  homepage "https://github.com/orf/git-workspace"
  if OS.mac?
    url "https://github.com/orf/git-workspace/releases/download/v0.5.0/git-workspace-Darwin-x86_64.tar.gz"
    sha256 "4f8d739be871cb6d630873c5cd308898fc735d26d258ebbb40f784aef4576111"
  elsif OS.linux?
    url "https://github.com/orf/git-workspace/releases/download/v0.5.0/git-workspace-Linux-x86_64.tar.gz"
    sha256 "3d89c764c1bda38957d57bff6a4ecf10cc1e01e33437a326321239a6b22d875f"
  end
  version "0.5.0"

  def install
    bin.install "git-workspace"
  end

  test do
    system "git", "workspace", "--version"
  end
end
