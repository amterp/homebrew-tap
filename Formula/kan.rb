class Kan < Formula
  desc "A kanban board that lives in your repository"
  homepage "https://github.com/amterp/kan"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/amterp/kan/releases/download/v#{version}/kan-#{version}-darwin-arm64.tar.gz"
      sha256 "ef11b52517facf0604de31d1d914e9b51994437c6de14535810782ad70795fdd"
    else
      url "https://github.com/amterp/kan/releases/download/v#{version}/kan-#{version}-darwin-amd64.tar.gz"
      sha256 "155938cebd5e0bf06ffb7d31c614503c7e6b519f0efce58729a87dca21bab9ef"
    end
  end

  def install
    bin.install "kan"
  end

  test do
    system "#{bin}/kan", "--help"
  end
end