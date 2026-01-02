class Council < Formula
  desc "CLI tool for collaborative multi-agent sessions"
  homepage "https://github.com/amterp/council"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/amterp/council/releases/download/v#{version}/council-#{version}-darwin-arm64.tar.gz"
      sha256 "ed472de73ef61118d07b74a6e991464b3d18c078b12dcea3cb1fe6960fdc3653"
    else
      url "https://github.com/amterp/council/releases/download/v#{version}/council-#{version}-darwin-amd64.tar.gz"
      sha256 "6b0b4a9d039b22ba39531764e50085a26ea7c71df8a1235057e4291617f5f8a0"
    end
  end

  def install
    bin.install "council"
  end

  test do
    system "#{bin}/council", "--help"
  end
end