cask "filefinder" do
  version "1.0.5"
  sha256 "f72b066de477b0eba01547a42fe48bac4d77b57c8c5696e79862601e375a0e58"

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
