class GitWorkspace < Formula
  desc "Mirror your local git repositories from multiple providers"
  homepage "https://github.com/orf/git-workspace"
  if OS.mac?
    url "https://github.com/orf/git-workspace/releases/download/v0.4.0/git-workspace-Darwin-x86_64.tar.gz"
    sha256 "4d23e682eaa2468b552ee1ffeb59d3fcb1b709da79813984698ba89c9b0548d9"
  elsif OS.linux?
    url "https://github.com/orf/git-workspace/releases/download/v0.4.0/git-workspace-Linux-x86_64.tar.gz"
    sha256 "b667b6fbf1e712f53559c5b186e8cc5b563bff7b9ddfc232bac13b5261b1fcb8"
  end
  version "0.4.0"

  def install
    bin.install "git-workspace"
  end

  test do
    system "git", "workspace", "--version"
  end
end
