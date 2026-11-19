class FilefinderTui < Formula
  desc "Keyboard-first terminal file manager with previews, tabs and two panes"
  homepage "https://github.com/juancasanueva/filefinder-tui"
  url "https://github.com/juancasanueva/filefinder-tui/releases/download/v1.0.6/filefinder-tui-1.0.6-macos-universal.tar.gz"
  sha256 "27261f362ab6ca86dc882d5daafe4b6a3162de01810e7f85642fa53d6bb29521"
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
