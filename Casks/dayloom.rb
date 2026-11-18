cask "dayloom" do
  version "1.0.2"
  sha256 "ee8a5e3db0d903039ebb8f3c1d0e0fca8dd7855e0071c945d401f5a1bcda73ee"

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
