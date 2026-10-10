# TD21forever Homebrew Tap

Homebrew Casks for [TD21forever](https://github.com/TD21forever) apps.

## Install String Notes

```bash
brew install --cask TD21forever/tap/string-notes
```

绳上便笺 is a native macOS notes app. This release supports Apple Silicon and targets macOS 13+. It is an ad-hoc signed preview, not Apple-notarized.

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
