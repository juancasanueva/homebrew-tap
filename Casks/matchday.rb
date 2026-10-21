cask "matchday" do
  version "1.0.5"
  sha256 "43730f53f237f4cebfe51c4a9072accd7cff2ec522dd09321750dceb0ca7d9c7"

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
