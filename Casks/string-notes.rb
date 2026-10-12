cask "string-notes" do
  version "0.13.1"
  arch arm: "arm64", intel: "x86_64"
  sha256 arm: "ea628234e0ad3e0aa8104c005d66f5798b637dafd98fd8cde48c653ebf0c34dd",
         intel: "670f571bd62fad615820e16b0ed058c346c9906a35687b94e246c72b1709dc99"

  url "https://github.com/TD21forever/string-notes/releases/download/v#{version}/StringNotes-#{version}-#{arch}.zip"
  name "绳上便笺"
  desc "Native macOS notes hanging on a string"
  homepage "https://github.com/TD21forever/string-notes"

  auto_updates true

  depends_on macos: :ventura

  app "绳上便笺.app"

  uninstall quit: "local.stringnotes.app"

  caveats <<~EOS
    This app is ad-hoc signed and not notarized by Apple.
    macOS may require approval before first launch.
    Notes are stored in ~/Library/Application Support/StringNotes.
    Uninstalling this cask does not remove your notes.
  EOS
end
