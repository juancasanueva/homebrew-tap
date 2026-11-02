cask "yt_downloader" do
  version "1.0.8"
  sha256 "70fbc8ef58493d069ae2cae9a8b497c06cc762db7e7b03f905b7140c986c7011"

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
