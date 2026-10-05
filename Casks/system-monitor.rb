cask "system-monitor" do
  version "1.0.2"
  sha256 "c65ab90309aa4d0baf23a7db8946cdf8bcf71161c8d395e94128f5f3d05d69eb"

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
