cask "bep" do
  version "0.1.4"
  sha256 "e51738afccca415bea5e83045864e400285995fd921417e3abd54912113b8cf3"

  url "https://github.com/amterp/better-emoji-picker/releases/download/v#{version}/BetterEmojiPicker-#{version}.zip"
  name "Better Emoji Picker"
  desc "A fast, keyboard-driven emoji picker for macOS"
  homepage "https://github.com/amterp/better-emoji-picker"

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