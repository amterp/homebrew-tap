cask "keytee" do
  version "0.1.3"
  sha256 "caf4c16835d66ed6f6551bb48fa0e5968175887d64a6e0b82dd9c6d33e112327"

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