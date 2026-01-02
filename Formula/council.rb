class Council < Formula
  desc "CLI tool for collaborative multi-agent sessions"
  homepage "https://github.com/amterp/council"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/amterp/council/releases/download/v#{version}/council-#{version}-darwin-arm64.tar.gz"
      sha256 "931ce601e515174eb69e74a091c16c34ce41ef524117976c0bab91b8b60e4be2"
    else
      url "https://github.com/amterp/council/releases/download/v#{version}/council-#{version}-darwin-amd64.tar.gz"
      sha256 "672a4c28970b4802307055158204f5f26f9c8da8960b87599ad06ab514e7dfc7"
    end
  end

  def install
    bin.install "council"
  end

  test do
    system "#{bin}/council", "--help"
  end
end