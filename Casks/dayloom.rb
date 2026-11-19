cask "dayloom" do
  version "1.0.7"
  sha256 "8aaa375e1adebe992eac862f2381f9c583563c1f444c18ae81328b2c893d1d10"

  url "https://github.com/juancasanueva/dayloom/releases/download/v#{version}/Dayloom-#{version}.zip"
  name "Dayloom"
  desc "Planner for tasks, calendar, habits and notes, synced through iCloud"
  homepage "https://github.com/juancasanueva/dayloom"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Dayloom.app"

  zap trash: [
    "~/.config/dayloom",
    "~/Library/Application Scripts/com.juancasanueva.agenda",
    "~/Library/Containers/com.juancasanueva.agenda",
  ]
end
