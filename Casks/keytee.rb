cask "keytee" do
  version "0.1.0"
  sha256 "PLACEHOLDER_UNTIL_FIRST_RELEASE"

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