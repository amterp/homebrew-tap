cask "bep" do
  version "1.0.0"
  sha256 "PLACEHOLDER"

  url "https://github.com/amterp/BetterEmojiPicker/releases/download/v#{version}/BetterEmojiPicker-#{version}.zip"
  name "Better Emoji Picker"
  desc "A fast, keyboard-driven emoji picker for macOS"
  homepage "https://github.com/amterp/BetterEmojiPicker"

  depends_on macos: ">= :sonoma"

  app "BetterEmojiPicker.app"

  zap trash: [
    "~/Library/Preferences/dev.amterp.BetterEmojiPicker.plist",
  ]

  caveats <<~EOS
    BEP requires Accessibility permission to paste emojis.

    After installation:
      1. Open BEP from Applications (or it will auto-start)
      2. Click "Open System Settings" when prompted
      3. Enable BEP in Privacy & Security → Accessibility

    If you see "app is damaged" error (unsigned app):
      xattr -cr /Applications/BetterEmojiPicker.app
  EOS
end