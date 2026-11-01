cask "terrazzo" do
  version "1.0.8"
  sha256 "900664dfa23c55e37b577190c8b1a2a896201b42f85a2a861173a065861718fd"

  url "https://github.com/juancasanueva/SWIFTUI_Terrazzo/releases/download/v#{version}/Terrazzo-#{version}.zip"
  name "Terrazzo"
  desc "Tiling window manager with numbered workspaces"
  homepage "https://github.com/juancasanueva/SWIFTUI_Terrazzo"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Terrazzo.app"

  zap trash: [
    "~/.config/terrazzo",
    "~/Library/Application Support/com.juancasanueva.terrazzo",
    "~/Library/Caches/com.juancasanueva.terrazzo",
    "~/Library/HTTPStorages/com.juancasanueva.terrazzo",
    "~/Library/Preferences/com.juancasanueva.terrazzo.plist",
    "~/Library/Saved Application State/com.juancasanueva.terrazzo.savedState",
  ]
end
