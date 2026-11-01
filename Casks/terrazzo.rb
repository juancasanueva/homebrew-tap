cask "terrazzo" do
  version "1.0.6"
  sha256 "76628458fd5605dc186a1d8c2c42d89781d956091daab056e963b606835c4285"

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
