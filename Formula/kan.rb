class Kan < Formula
  desc "A kanban board that lives in your repository"
  homepage "https://github.com/amterp/kan"
  version "0.24.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/amterp/kan/releases/download/v#{version}/kan-#{version}-darwin-arm64.tar.gz"
      sha256 "d111f300f7e55e31dcd4f7e045b23645c76fc506c496647be4f16316318e59f9"
    else
      url "https://github.com/amterp/kan/releases/download/v#{version}/kan-#{version}-darwin-amd64.tar.gz"
      sha256 "b8a2ae354803d9e5f7a8c7991257d806bc737ffb296e29807281e94852498c2c"
    end
  end

  def install
    bin.install "kan"
  end

  test do
    system "#{bin}/kan", "--help"
  end
end