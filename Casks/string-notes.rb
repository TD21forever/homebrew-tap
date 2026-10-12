cask "string-notes" do
  version "0.12.0"
  arch arm: "arm64", intel: "x86_64"
  sha256 arm: "7135565f4476cd553500f25d909b1e57158793be8bb80b95a937e59fae08eede",
         intel: "1b585f3decdd2efc9c42d56f717096e14426631188c2683729ced0efd4a730a6"

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
