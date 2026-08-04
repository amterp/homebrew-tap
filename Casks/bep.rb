cask "bep" do
  version "0.2.0"
  sha256 "cec376eb00398e7623b2190bf0a154b00542b487df8a73ddf44890d916bbf89d"

  url "https://github.com/amterp/better-emoji-picker/releases/download/v#{version}/BetterEmojiPicker-#{version}.zip"
  name "Better Emoji Picker"
  desc "A fast, keyboard-driven emoji picker for macOS"
  homepage "https://github.com/amterp/better-emoji-picker"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "BetterEmojiPicker.app"

  # BEP is a menu bar agent holding a global hotkey; without this an upgrade or
  # uninstall leaves the old process running and still owning Ctrl+Cmd+Space.
  uninstall quit: "dev.amterp.BetterEmojiPicker"

  zap trash: [
    "~/.config/bep/settings.toml",
    "~/Library/Preferences/dev.amterp.BetterEmojiPicker.plist",
  ]

  caveats <<~EOS
    BEP requires Accessibility permission to paste emojis.

    After installation:
      1. Open BEP from Applications (or it will auto-start)
      2. Click "Open System Settings" when prompted
      3. Enable BEP in Privacy & Security → Accessibility
  EOS
end