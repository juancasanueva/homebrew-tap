cask "matchday" do
  version "1.0.4"
  sha256 "e0e5ceba99e93f2fc015cf8144a1ae9eec009b74049250dd2056d6c1f4a2cb29"

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
