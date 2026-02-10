class Beagle < Formula
  desc "macOS job scheduler with profile-based multi-repo workflows"
  homepage "https://github.com/amterp/beagle"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/amterp/beagle/releases/download/v#{version}/beagle-#{version}-darwin-arm64.tar.gz"
      sha256 "85d3a5cd766ae7442c69c9292619b1419a433bb2a1186158733a56f5d9788d5e"
    else
      url "https://github.com/amterp/beagle/releases/download/v#{version}/beagle-#{version}-darwin-amd64.tar.gz"
      sha256 "e0cf63dba23fff52dd536284fd9ec9d59d896c9844c39223d77d227f44137d7a"
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