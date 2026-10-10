cask "string-notes" do
  version "0.10.2"
  sha256 "1a11fd5522f8d59ea756a658b099c8f843e53520a169fda1c8c93f24857b090e"

  url "https://github.com/TD21forever/string-notes/releases/download/v#{version}/StringNotes-#{version}-arm64.zip"
  name "绳上便笺"
  desc "Native macOS notes hanging on a string"
  homepage "https://github.com/TD21forever/string-notes"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "绳上便笺.app"

  uninstall quit: "local.stringnotes.app"

  caveats <<~EOS
    This Apple Silicon preview is ad-hoc signed and not notarized by Apple.
    macOS may require approval before first launch.
    Notes are stored in ~/Library/Application Support/StringNotes.
    Uninstalling this cask does not remove your notes.
  EOS
end
