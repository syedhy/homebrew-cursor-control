cask "cursor-control" do
  version "1.2.0"
  sha256 "80209cc8b767dd6909d5508fb29c6dc69bff764d6cc04e1c6cdd53f506283945"

  url "https://github.com/syedhy/Cursor-Control/releases/download/v#{version}/CursorControl-#{version}-macOS.zip"
  name "Cursor Control"
  desc "Keyboard-driven cursor movement and scrolling for macOS"
  homepage "https://github.com/syedhy/Cursor-Control"

  depends_on macos: :ventura

  app "CursorControl-#{version}-macOS/Cursor Control.app"

  zap trash: [
    "~/Library/Preferences/io.github.cursorcontrol.CursorControl.plist",
  ]

  caveats <<~EOS
    Cursor Control is currently ad-hoc signed and not Apple-notarized.
    On first launch, macOS may block it.

    If that happens:
      1. Open System Settings > Privacy & Security.
      2. Scroll to the security message for Cursor Control.
      3. Click Open Anyway, then confirm Open.

    Some macOS versions may also allow Control-clicking Cursor Control.app
    in Applications and choosing Open.

    Cursor Control requires Accessibility access for keyboard-requested
    cursor movement, clicking, and scrolling.
  EOS
end
