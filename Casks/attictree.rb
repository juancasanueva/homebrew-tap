cask "attictree" do
  version "1.0.0"
  sha256 "6b0563f84c2daf05b63d3d621aafed0d4eb62eaf9d302a15fd11406e637212c3"

  url "https://github.com/juancasanueva/AtticTree/releases/download/v#{version}/AtticTree-#{version}.zip"
  name "AtticTree"
  desc "Treemap of what fills your disk, for marking and reclaiming space"
  homepage "https://github.com/juancasanueva/AtticTree"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "AtticTree.app"
  binary "#{appdir}/AtticTree.app/Contents/MacOS/attictree"

  zap trash: [
    "~/Library/Caches/com.juancasanueva.AtticTree",
    "~/Library/HTTPStorages/com.juancasanueva.AtticTree",
    "~/Library/Preferences/com.juancasanueva.AtticTree.plist",
    "~/Library/Saved Application State/com.juancasanueva.AtticTree.savedState",
  ]
end
