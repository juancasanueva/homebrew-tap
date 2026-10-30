cask "attic" do
  version "1.0.0"
  sha256 "941cdd20ec71104759417755baf10bf2fbd216e39c76e50f3a47c641182711ed"

  url "https://github.com/juancasanueva/SWIFTUI_Attic/releases/download/v#{version}/Attic-#{version}.zip"
  name "Attic"
  desc "Disk space analyzer with sunburst and treemap views"
  homepage "https://github.com/juancasanueva/SWIFTUI_Attic"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Attic.app"

  zap trash: [
    "~/Library/Application Scripts/com.juancasanueva.attic",
    "~/Library/Application Support/com.juancasanueva.attic",
    "~/Library/Caches/com.juancasanueva.attic",
    "~/Library/Containers/com.juancasanueva.attic",
    "~/Library/HTTPStorages/com.juancasanueva.attic",
    "~/Library/Preferences/com.juancasanueva.attic.plist",
    "~/Library/Saved Application State/com.juancasanueva.attic.savedState",
  ]
end
