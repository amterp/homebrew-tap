class Council < Formula
  desc "CLI tool for collaborative multi-agent sessions"
  homepage "https://github.com/amterp/council"
  version "0.4.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/amterp/council/releases/download/v#{version}/council-#{version}-darwin-arm64.tar.gz"
      sha256 "b9633efca57be67e2cf04ceafeeccbc7862d92c8466ed290eb64051e1db5be89"
    else
      url "https://github.com/amterp/council/releases/download/v#{version}/council-#{version}-darwin-amd64.tar.gz"
      sha256 "f39daafc488d2a5680c18845dae5aafee4a803a47c27f0ab643638ecd9582d0a"
    end
  end

  def install
    bin.install "council"
  end

  test do
    system "#{bin}/council", "--help"
  end
end