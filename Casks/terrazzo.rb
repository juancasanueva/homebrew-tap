cask "terrazzo" do
  version "1.0.11"
  sha256 "3ff83f2e408f0b34d5e853704dc79b4ca4bc8807e3e3cd2778c42673472d492b"

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
