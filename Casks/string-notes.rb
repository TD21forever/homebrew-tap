cask "string-notes" do
  version "0.10.0"
  sha256 "793257d47a2c6f1b95e2ad5a5fc3ddd17601ce8ae6c22c89881d31f702e779ad"

  url "https://github.com/TD21forever/string-notes/releases/download/v#{version}/StringNotes-#{version}-arm64.zip"
  name "绳上便笺"
  desc "Native macOS notes hanging on a string"
  homepage "https://github.com/TD21forever/string-notes"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "绳上便笺.app"

  uninstall quit: "local.stringnotes.app"

  caveats <<~EOS
    This Apple Silicon preview is ad-hoc signed and not notarized by Apple.
    macOS may require approval before first launch.
    Notes are stored in ~/Library/Application Support/StringNotes.
    Uninstalling this cask does not remove your notes.
  EOS
end
