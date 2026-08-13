class Kan < Formula
  desc "A kanban board that lives in your repository"
  homepage "https://github.com/amterp/kan"
  version "0.29.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/amterp/kan/releases/download/v#{version}/kan-#{version}-darwin-arm64.tar.gz"
      sha256 "82aafc293652957315a4caf165ea18bc742d74c19a304da3fc64748fd9582058"
    else
      url "https://github.com/amterp/kan/releases/download/v#{version}/kan-#{version}-darwin-amd64.tar.gz"
      sha256 "c7d51376ae5623cc167a66bfa88f55e3cada018f15d4e8c0033b3fbd0bb7265c"
    end
  end

  def install
    bin.install "kan"
  end

  test do
    system "#{bin}/kan", "--help"
  end
end