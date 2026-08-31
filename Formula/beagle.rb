class Beagle < Formula
  desc "macOS job scheduler with profile-based multi-repo workflows"
  homepage "https://github.com/amterp/beagle"
  version "0.6.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/amterp/beagle/releases/download/v#{version}/beagle-#{version}-darwin-arm64.tar.gz"
      sha256 "7163490e037e9924e4a2ec0b0ac041b47449b0feef7474e42b0df4e4c5406e57"
    else
      url "https://github.com/amterp/beagle/releases/download/v#{version}/beagle-#{version}-darwin-amd64.tar.gz"
      sha256 "d8c053ba177e3eebdd5450c4b33b86fca0d5739393e8a4ff4fd657b1d553cb8b"
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