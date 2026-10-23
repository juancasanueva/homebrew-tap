cask "peribattery" do
  version "1.0.5"
  sha256 "3a60cf9cbc04b780d6ea85475a0391c383b4dbf77d09199d7b9c0cd1e5e7c758"

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
