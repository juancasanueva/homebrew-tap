cask "peribattery" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/juancasanueva/SWIFTUI_battery/releases/download/v#{version}/PeriBattery-#{version}.zip"
  name "PeriBattery"
  desc "Menu bar battery levels for Logitech keyboards and mice"
  homepage "https://github.com/juancasanueva/SWIFTUI_battery"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "PeriBattery.app"

  zap trash: [
    "~/Library/Application Scripts/com.juancasanueva.battery",
    "~/Library/Application Support/com.juancasanueva.battery",
    "~/Library/Caches/com.juancasanueva.battery",
    "~/Library/Containers/com.juancasanueva.battery",
    "~/Library/HTTPStorages/com.juancasanueva.battery",
    "~/Library/Preferences/com.juancasanueva.battery.plist",
  ]
end
