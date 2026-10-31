cask "terrazzo" do
  version "1.0.4"
  sha256 "07946cc0a4873d7f35cab557dd2dc8cfa24a939d56838435a17c5018a328c5bf"

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
