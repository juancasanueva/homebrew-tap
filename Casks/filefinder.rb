cask "filefinder" do
  version "1.1.6"
  sha256 "eb7638afa8a0c32798db3167fb0501de2a26aa2543c2cbc49eda3cadb6643261"

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
