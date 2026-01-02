class Council < Formula
  desc "CLI tool for collaborative multi-agent sessions"
  homepage "https://github.com/amterp/council"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/amterp/council/releases/download/v#{version}/council-#{version}-darwin-arm64.tar.gz"
      sha256 "2c95a2e334e6c8c926209ad682149d53bed0a7084526857b1d79197506227788"
    else
      url "https://github.com/amterp/council/releases/download/v#{version}/council-#{version}-darwin-amd64.tar.gz"
      sha256 "171974449a1db54260beed17f6583e12eee5b029eca636c7ad7c82ced2182b80"
    end
  end

  def install
    bin.install "council"
  end

  test do
    system "#{bin}/council", "--help"
  end
end