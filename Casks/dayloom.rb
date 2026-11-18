cask "dayloom" do
  version "1.0.4"
  sha256 "8099f86b3c63784d846785cee437c41fe5c77e6043f67b8996fd223321dba3cc"

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
