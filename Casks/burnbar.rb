cask "burnbar" do
  version "1.0.0"
  sha256 "d2983ad49b7a76e10af6e450d6fca29e7273f5481b165992a4989d9649447ca9"

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
