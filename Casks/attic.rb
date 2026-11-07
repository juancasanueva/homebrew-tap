cask "attic" do
  version "1.0.4"
  sha256 "1755481f3d0361688e4cbe156d5c047dc04d4618844e319f423d0ab8a5b020d4"

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
