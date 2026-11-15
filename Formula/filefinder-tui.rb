class FilefinderTui < Formula
  desc "Keyboard-first terminal file manager with previews, tabs and two panes"
  homepage "https://github.com/juancasanueva/filefinder-tui"
  url "https://github.com/juancasanueva/filefinder-tui/releases/download/v1.0.5/filefinder-tui-1.0.5-macos-universal.tar.gz"
  sha256 "353b1d173f21ad52f0b002c7befc0be4092966cf7d2c4240bb5afccefd0751fe"
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
