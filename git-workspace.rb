class GitWorkspace < Formula
  desc "Mirror your local git repositories from multiple providers"
  homepage "https://github.com/orf/git-workspace"
  if OS.mac?
    url "https://github.com/orf/git-workspace/releases/download/v0.2.0/git-workspace-Darwin-x86_64.tar.gz"
    sha256 "849159c0b653325d018a7ccbef698b01be0eba2266bd85739a7c532391d2bff4"
  elsif OS.linux?
    url "https://github.com/orf/git-workspace/releases/download/v0.2.0/git-workspace-Linux-x86_64.tar.gz"
    sha256 "1ff82b7a739027a7af0a8fa96689e42f26dc1a5ae30c313e8f9dcd3f320d0aa7"
  end
  version "0.2.0"

  def install
    bin.install "git-workspace"
  end

  test do
    system "git", "workspace", "--version"
  end
end
