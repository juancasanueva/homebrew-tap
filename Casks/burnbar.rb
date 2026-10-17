cask "burnbar" do
  version "1.0.1"
  sha256 "2b4ad3b8877d3af4f11167ee9315a766f9c678f0658037c3a00fc6fea48bdf2c"

  url "https://github.com/juancasanueva/SWIFTUI_burnbar/releases/download/v#{version}/Burnbar-#{version}.zip"
  name "Burnbar"
  desc "Menu bar burn rate for Claude and Codex plan limits"
  homepage "https://github.com/juancasanueva/SWIFTUI_burnbar"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Burnbar.app"

  zap trash: [
    "~/Library/Application Support/burnbar",
    "~/Library/Caches/com.juancasanueva.burnbar",
    "~/Library/Containers/com.juancasanueva.burnbar",
    "~/Library/HTTPStorages/com.juancasanueva.burnbar",
    "~/Library/Preferences/com.juancasanueva.burnbar.plist",
  ]
end
