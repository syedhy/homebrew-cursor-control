# Homebrew Tap for Cursor Control

This is the Homebrew tap for Cursor Control, a macOS menu bar utility for
keyboard-driven cursor movement, clicking, and scrolling.

Main app repository:

https://github.com/syedhy/Cursor-Control

Current release:

```text
v1.0.0
```

## Install

```bash
brew tap syedhy/cursor-control
brew trust --cask syedhy/cursor-control/cursor-control
brew install --cask syedhy/cursor-control/cursor-control
```

The fully-qualified cask path keeps Homebrew focused on this specific cask from
the tap.

## First Launch

Cursor Control is currently ad-hoc signed and not Apple-notarized because it is
distributed without an Apple Developer Program account. On first launch, macOS
may block the app.

If macOS blocks it:

1. Open System Settings.
2. Go to Privacy & Security.
3. Find the message about Cursor Control.
4. Click Open Anyway.
5. Confirm Open.

Some macOS versions may also allow Control-clicking Cursor Control.app in
Applications and choosing Open.

## Accessibility

Cursor Control requires Accessibility access to perform keyboard-requested
cursor movement, clicking, and scrolling. Grant access when prompted, or enable
it in System Settings > Privacy & Security > Accessibility.

## Uninstall

```bash
brew uninstall --cask syedhy/cursor-control/cursor-control
```

To remove app preferences too:

```bash
brew zap --cask syedhy/cursor-control/cursor-control
```
