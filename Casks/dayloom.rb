cask "dayloom" do
  version "1.0.6"
  sha256 "a1f8f12df8b00632d90c846bd5fea3dadb9b9fc86ab2b060dde7236208377ccf"

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
