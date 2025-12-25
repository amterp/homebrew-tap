cask "keytee" do
  version "0.1.2"
  sha256 "36a83f543f413fd99b1b1468ed02e6455fff85d0bf57719ded66ed10bf103319"

  url "https://github.com/amterp/keytee/releases/download/v#{version}/KeyTee-#{version}.zip"
  name "KeyTee"
  desc "A safety net for your keystrokes"
  homepage "https://github.com/amterp/keytee"

  depends_on macos: ">= :sonoma"

  app "KeyTee.app"

  zap trash: [
    "~/.config/keytee",
  ]

  caveats <<~EOS
    KeyTee requires Accessibility permission to capture keystrokes.

    After installation:
      1. Open KeyTee from Applications
      2. Click "Open System Settings" when prompted
      3. Enable KeyTee in Privacy & Security → Accessibility

    If you see "app is damaged" error (unsigned app):
      xattr -cr /Applications/KeyTee.app
  EOS
end