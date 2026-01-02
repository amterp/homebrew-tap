class Council < Formula
  desc "CLI tool for collaborative multi-agent sessions"
  homepage "https://github.com/amterp/council"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/amterp/council/releases/download/v#{version}/council-#{version}-darwin-arm64.tar.gz"
      sha256 "a2cf1733ec96e554e94e452ee912a6dd641487b49a54e11c2652c93def3db00b"
    else
      url "https://github.com/amterp/council/releases/download/v#{version}/council-#{version}-darwin-amd64.tar.gz"
      sha256 "ed3ffa0c82dc1cd488bec6087ee01f071c2fccd7489e92e661e9486ea01d0e4f"
    end
  end

  def install
    bin.install "council"
  end

  test do
    system "#{bin}/council", "--help"
  end
end