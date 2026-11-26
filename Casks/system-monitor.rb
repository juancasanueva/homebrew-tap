cask "system-monitor" do
  version "1.0.4"
  sha256 "c379db757b8e5659024f985434a5af1e708588e786b0a90f6f36a8f58b9e430b"

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
