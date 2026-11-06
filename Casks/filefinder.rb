cask "filefinder" do
  version "1.0.8"
  sha256 "794fc6e29ca8299af8a8c0f6832d73f39afa90d6edb3a1c5a1c5bd525bda692c"

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
