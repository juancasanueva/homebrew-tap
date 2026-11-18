cask "dayloom" do
  version "1.0.3"
  sha256 "a266875247ef60e599957ea66cddb53f1dc39679d47b6ca7b3cb05aa64ecae68"

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
