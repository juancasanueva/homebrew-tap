class FilefinderTui < Formula
  desc "Keyboard-first terminal file manager with previews, tabs and two panes"
  homepage "https://github.com/juancasanueva/filefinder-tui"
  url "https://github.com/juancasanueva/filefinder-tui/releases/download/v1.0.3/filefinder-tui-1.0.3-macos-universal.tar.gz"
  sha256 "e04b58ec59ec764bd45aab16f3ab21a9804392d17c9fb1a949b979be2d483631"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "bat"
  depends_on :macos

  def install
    bin.install "filefinder-tui"
  end

  test do
    assert_predicate bin/"filefinder-tui", :executable?
  end
end
