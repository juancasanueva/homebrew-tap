cask "matchday" do
  version "1.0.3"
  sha256 "01348f84848e9f12fa6103bc9e5c10b4ed4b24dfe34bba933153dfc9b9fd4af2"

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
