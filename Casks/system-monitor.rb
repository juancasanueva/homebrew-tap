cask "system-monitor" do
  version "1.0.1"
  sha256 "b59e7dede9452e529f35cfce1eb06edef737578ee1c7b5d0d33c42799022fc19"

  url "https://github.com/juancasanueva/SWIFTUI_system_monitor/releases/download/v#{version}/System-Monitor-#{version}.zip"
  name "System-Monitor"
  name "System Monitor"
  desc "Menu bar monitor for CPU, memory, disk and network"
  homepage "https://github.com/juancasanueva/SWIFTUI_system_monitor"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "System-Monitor.app"

  zap trash: [
    "~/Library/Application Support/com.juancasanueva.system-monitor",
    "~/Library/Caches/com.juancasanueva.system-monitor",
    "~/Library/Containers/com.juancasanueva.system-monitor",
    "~/Library/HTTPStorages/com.juancasanueva.system-monitor",
    "~/Library/Preferences/com.juancasanueva.system-monitor.plist",
  ]
end
