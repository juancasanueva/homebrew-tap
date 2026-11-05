cask "filefinder" do
  version "1.0.0"
  sha256 "3334351e2a462be9d99a78b7fe857b02c508e3607f276e93e61263e5e60c9584"

  url "https://github.com/juancasanueva/SWIFTUI_FileFinder/releases/download/v#{version}/FileFinder-#{version}.zip"
  name "FileFinder"
  desc "Keyboard-friendly dual-pane file browser"
  homepage "https://github.com/juancasanueva/SWIFTUI_FileFinder"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "FileFinder.app"

  zap trash: [
    "~/.config/filefinder",
    "~/Library/Application Support/com.juancasanueva.FileFinder",
    "~/Library/Caches/com.juancasanueva.FileFinder",
    "~/Library/HTTPStorages/com.juancasanueva.FileFinder",
    "~/Library/Preferences/com.juancasanueva.FileFinder.plist",
    "~/Library/Saved Application State/com.juancasanueva.FileFinder.savedState",
  ]
end
