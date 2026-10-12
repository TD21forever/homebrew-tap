# TD21forever Homebrew Tap

Homebrew Casks for [TD21forever](https://github.com/TD21forever) apps.

## Install String Notes

```bash
brew install --cask TD21forever/tap/string-notes
```

绳上便笺 is a native macOS notes app. Version **0.13.1** supports Apple Silicon and Intel Macs running macOS 13+. Homebrew selects the matching package automatically. It is ad-hoc signed and not Apple-notarized.

0.13.1 修复设置选项显示旧值的问题。Version 0.13.1 fixes stale selections in Settings.

新增应用内更新：检查新版、下载、验证签名、保存便笺后安装并重启。Updates now download, verify signatures, save notes, install, and relaunch within the app.

0.12.0 及更早版本需要通过下方命令完成最后一次手动升级；之后可在应用内更新。Version 0.12.0 and earlier need one final Homebrew upgrade using the commands below; subsequent updates can be installed in the app.

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
