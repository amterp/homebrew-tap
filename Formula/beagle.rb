class Beagle < Formula
  desc "macOS job scheduler with profile-based multi-repo workflows"
  homepage "https://github.com/amterp/beagle"
  version "0.0.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/amterp/beagle/releases/download/v#{version}/beagle-#{version}-darwin-arm64.tar.gz"
      sha256 "TODO"
    else
      url "https://github.com/amterp/beagle/releases/download/v#{version}/beagle-#{version}-darwin-amd64.tar.gz"
      sha256 "TODO"
    end
  end

  def install
    bin.install "beagle"
    bin.install "beagle-run"
  end

  test do
    system "#{bin}/beagle", "--help"
  end
end
