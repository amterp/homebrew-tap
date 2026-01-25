class Kan < Formula
  desc "A kanban board that lives in your repository"
  homepage "https://github.com/amterp/kan"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/amterp/kan/releases/download/v#{version}/kan-#{version}-darwin-arm64.tar.gz"
      sha256 "caee11e9b210fff46b9bda6348c1510bfaddd7e90a29c6dd6ff180aae9dccbc2"
    else
      url "https://github.com/amterp/kan/releases/download/v#{version}/kan-#{version}-darwin-amd64.tar.gz"
      sha256 "94374a5ccaac89d5b44ec1691c061d82e2c9d3d04a254979394b4282827a3b68"
    end
  end

  def install
    bin.install "kan"
  end

  test do
    system "#{bin}/kan", "--help"
  end
end