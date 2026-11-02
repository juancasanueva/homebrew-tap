cask "yt_downloader" do
  version "1.0.5"
  sha256 "f77463c8f32b6ec2f2395cd517a6e6cc1c7f7a7829dbab709d589dce8e16f0a9"

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
