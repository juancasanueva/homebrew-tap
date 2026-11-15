class FilefinderTui < Formula
  desc "Keyboard-first terminal file manager with previews, tabs and two panes"
  homepage "https://github.com/juancasanueva/filefinder-tui"
  url "https://github.com/juancasanueva/filefinder-tui/releases/download/v1.0.1/filefinder-tui-1.0.1-macos-universal.tar.gz"
  sha256 "22b2b786ade117ffbc03b9aec79601336124814c653d152aafe101356b9cc2f1"
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
