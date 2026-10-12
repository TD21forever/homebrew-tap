# TD21forever Homebrew Tap

Homebrew Casks for [TD21forever](https://github.com/TD21forever) apps.

## Install String Notes

```bash
brew install --cask TD21forever/tap/string-notes
```

绳上便笺 is a native macOS notes app. Version **0.12.0** supports Apple Silicon and Intel Macs running macOS 13+. Homebrew selects the matching package automatically. It is ad-hoc signed and not Apple-notarized.

新增显示器选择、沿绳自由摆放和关闭自动收起的选项。Supports display selection, free note placement, and keeping the string visible.

## Update

```bash
brew update
brew upgrade --cask TD21forever/tap/string-notes
```

## Uninstall

```bash
brew uninstall --cask TD21forever/tap/string-notes
```

The cask does not erase note data in `~/Library/Application Support/StringNotes`.

[Source and release notes](https://github.com/TD21forever/string-notes).

Maintainers: release a new version first, then update `version` and `sha256` in `Casks/string-notes.rb`. Never overwrite a published release asset.
