# Homebrew Tap for Cursor Control

[![Release](https://img.shields.io/github/v/release/syedhy/Cursor-Control?label=release)](https://github.com/syedhy/Cursor-Control/releases/latest)
[![macOS](https://img.shields.io/badge/macOS-13%2B-lightgrey.svg)](https://github.com/syedhy/Cursor-Control)

This is the Homebrew tap for Cursor Control, a macOS menu bar app for moving the
mouse cursor, clicking, dragging, and scrolling with the keyboard.

Main app repository:

https://github.com/syedhy/Cursor-Control

## Before You Install

Cursor Control is currently ad-hoc signed and not Apple-notarized because it is
distributed without an Apple Developer Program account.

On first launch, macOS may show a warning such as:

```text
Apple could not verify "Cursor Control.app" is free of malware that may harm your Mac or compromise your privacy.
```

Depending on your macOS version, the dialog may offer **Done**, **Cancel**, or
**Move to Trash**. Do not click **Move to Trash** if you want to use the app.

To open Cursor Control:

1. Click **Done** or **Cancel** on the warning.
2. Open **System Settings**.
3. Go to **Privacy & Security**.
4. Scroll to the message about `Cursor Control.app`.
5. Click **Open Anyway**.
6. Confirm **Open**.

Some macOS versions may also allow Control-clicking `Cursor Control.app` in
Applications and choosing **Open**, but **Privacy & Security > Open Anyway** is
the most reliable method.

## Install

This tap requires [Homebrew](https://brew.sh/) to be installed first.

```bash
brew tap syedhy/cursor-control
brew trust --cask syedhy/cursor-control/cursor-control
brew install --cask syedhy/cursor-control/cursor-control
```

The cask installs `Cursor Control.app` from the official GitHub Release ZIP and
verifies the download with a SHA-256 checksum before installing.

## After Installation

1. Open `Cursor Control.app` from Applications.
2. Follow the first-launch steps above if macOS blocks it.
3. Grant Accessibility access when prompted.
4. Use the menu bar icon to open the guide, settings, or quit the app.

## Update

```bash
brew update
brew upgrade --cask syedhy/cursor-control/cursor-control
```

## Uninstall

```bash
brew uninstall --cask syedhy/cursor-control/cursor-control
```

To remove app preferences too:

```bash
brew zap --cask syedhy/cursor-control/cursor-control
```
