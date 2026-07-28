class Beagle < Formula
  desc "macOS job scheduler with profile-based multi-repo workflows"
  homepage "https://github.com/amterp/beagle"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/amterp/beagle/releases/download/v#{version}/beagle-#{version}-darwin-arm64.tar.gz"
      sha256 "b106a483f18b099e34dc660b28c354558beccb4ffc2fa17eb5d19a0e5196adc3"
    else
      url "https://github.com/amterp/beagle/releases/download/v#{version}/beagle-#{version}-darwin-amd64.tar.gz"
      sha256 "f6b54da6f014f5fd76bb9953ef92f2083bb5cbaf05506f85bf6154d89d591e67"
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