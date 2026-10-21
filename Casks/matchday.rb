cask "matchday" do
  version "1.0.0"
  sha256 "e54322d0d01bd1259524a2f56ea9bdf69e3655dbbbb703a55119718c042ff15d"

  url "https://github.com/juancasanueva/SWIFTUI_matchday/releases/download/v#{version}/Matchday-#{version}.zip"
  name "Matchday"
  desc "Menu bar app to follow soccer teams: live scores, fixtures and standings"
  homepage "https://github.com/juancasanueva/SWIFTUI_matchday"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Matchday.app"

  zap trash: [
    "~/Library/Application Scripts/com.juancasanueva.matchday",
    "~/Library/Application Support/com.juancasanueva.matchday",
    "~/Library/Caches/com.juancasanueva.matchday",
    "~/Library/Containers/com.juancasanueva.matchday",
    "~/Library/HTTPStorages/com.juancasanueva.matchday",
    "~/Library/Preferences/com.juancasanueva.matchday.plist",
  ]
end
