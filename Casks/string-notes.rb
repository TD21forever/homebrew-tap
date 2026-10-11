cask "string-notes" do
  version "0.11.1"
  arch arm: "arm64", intel: "x86_64"
  sha256 arm: "62246e3db926f2988c5058abe5243dfcfb5ce169dd1e1c79e4b71499043bd649",
         intel: "d0d29f6e7a8c5a056ae44a0e2cedec3a8d2d0ff22952cd5b6936cf3d8772c273"

  url "https://github.com/TD21forever/string-notes/releases/download/v#{version}/StringNotes-#{version}-#{arch}.zip"
  name "绳上便笺"
  desc "Native macOS notes hanging on a string"
  homepage "https://github.com/TD21forever/string-notes"

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
