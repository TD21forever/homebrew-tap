cask "string-notes" do
  version "0.13.0"
  arch arm: "arm64", intel: "x86_64"
  sha256 arm: "0c4a8e5343a72284a75b96e32c18716a93ae14840251367cbac822b16514dc3e",
         intel: "6e90e9f674fa174462031b37c332f6f2ec6de93addadc9b6c21079ee6ee7c43d"

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
