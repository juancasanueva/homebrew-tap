cask "home-cellar" do
  version "1.9.1"
  sha256 "aa59ec353b31b508a46cf9aff7d209f346e30fd1e17848415f8f2054f0787948"

  url "https://github.com/juancasanueva/SWIFTUI_cellar/releases/download/v#{version}/Home-Cellar-#{version}.zip"
  name "Home-Cellar"
  name "Cellar"
  desc "Native GUI for the Homebrew package manager"
  homepage "https://github.com/juancasanueva/SWIFTUI_cellar"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Home-Cellar.app"

  zap trash: [
    "~/Library/Application Support/com.juancasanueva.cellar",
    "~/Library/Caches/Cellar",
    "~/Library/Caches/com.juancasanueva.cellar",
    "~/Library/HTTPStorages/com.juancasanueva.cellar",
    "~/Library/Preferences/com.juancasanueva.cellar.plist",
  ]
end
