class Kan < Formula
  desc "A kanban board that lives in your repository"
  homepage "https://github.com/amterp/kan"
  version "0.20.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/amterp/kan/releases/download/v#{version}/kan-#{version}-darwin-arm64.tar.gz"
      sha256 "425b47d34517d87e0eb6cd5c9b7681389938b14c8e2b080d5b48124e1d354993"
    else
      url "https://github.com/amterp/kan/releases/download/v#{version}/kan-#{version}-darwin-amd64.tar.gz"
      sha256 "8b37fdc31a4cce29be34da2befaed4ba343240081ec00967a1dd1ba9eb42dfd3"
    end
  end

  def install
    bin.install "kan"
  end

  test do
    system "#{bin}/kan", "--help"
  end
end