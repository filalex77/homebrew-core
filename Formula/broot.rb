class Broot < Formula
  desc "New way to see and navigate directory trees"
  homepage "https://github.com/Canop/broot"
  url "https://github.com/Canop/broot/archive/v0.9.3.tar.gz"
  sha256 "a799b0fba07593648ebef2fc4bc58d9f623d81d539686251ef842ef6ba874e2a"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    system "broot", "--cmd", ":q"
  end
end
