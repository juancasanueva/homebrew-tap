class FilefinderTui < Formula
  desc "Keyboard-first terminal file manager with previews, tabs and two panes"
  homepage "https://github.com/juancasanueva/filefinder-tui"
  url "https://github.com/juancasanueva/filefinder-tui/releases/download/v1.0.2/filefinder-tui-1.0.2-macos-universal.tar.gz"
  sha256 "56e0fbfa625a470b9c7c14b430dff8ae8bf18821387f66c86340c5721f5691cc"
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
