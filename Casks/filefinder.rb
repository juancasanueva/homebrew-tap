cask "filefinder" do
  version "1.0.18"
  sha256 "4d8144a10f2ce93b5c6a6a47e0ec3abb1d78e22355a9067f69c479a4ca54b540"

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
