cask "youtube-downloader" do
  version "1.0.1"
  sha256 "5bf7074cb37c0a9c405baf20b8235928d1182916fb9d2dddad1918119850d031"

  url "https://github.com/juancasanueva/SWIFTUI_youtube_downloader/releases/download/v#{version}/YouTubeDownloader-#{version}.zip"
  name "YouTubeDownloader"
  desc "Menu bar app that downloads YouTube videos with yt-dlp"
  homepage "https://github.com/juancasanueva/SWIFTUI_youtube_downloader"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on formula: ["ffmpeg", "yt-dlp"]
  depends_on macos: :sequoia

  app "YouTubeDownloader.app"

  zap trash: [
    "~/Library/Application Scripts/com.juancasanueva.youtubedownload",
    "~/Library/Application Support/com.juancasanueva.youtubedownload",
    "~/Library/Caches/com.juancasanueva.youtubedownload",
    "~/Library/Containers/com.juancasanueva.youtubedownload",
    "~/Library/HTTPStorages/com.juancasanueva.youtubedownload",
    "~/Library/Preferences/com.juancasanueva.youtubedownload.plist",
    "~/Library/Saved Application State/com.juancasanueva.youtubedownload.savedState",
  ]
end
