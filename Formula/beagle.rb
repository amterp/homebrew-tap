class Beagle < Formula
  desc "macOS job scheduler with profile-based multi-repo workflows"
  homepage "https://github.com/amterp/beagle"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/amterp/beagle/releases/download/v#{version}/beagle-#{version}-darwin-arm64.tar.gz"
      sha256 "b51589a204fc9df12dd9fb6409f530502e0a18b7a778457c0b7ddf963ef37238"
    else
      url "https://github.com/amterp/beagle/releases/download/v#{version}/beagle-#{version}-darwin-amd64.tar.gz"
      sha256 "00ee7b2f42ad0156faed9c906838549e6c108829d1dacc97090933d36df10607"
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