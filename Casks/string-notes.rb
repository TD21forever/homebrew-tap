cask "string-notes" do
  version "0.11.0"
  arch arm: "arm64", intel: "x86_64"
  sha256 arm: "40a236c7a40b86f866ca6220416f960f18e246628a4721515bd7c548de7808d0",
         intel: "11ec0d28ab8643638577d1d93119c230348bed4184e62a8c6837831a8fafcdcb"

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
