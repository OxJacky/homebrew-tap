class Jtorrent < Formula
  desc "Download torrents through the JTorrent cloud from your terminal"
  homepage "https://github.com/OxJacky/jtorrent-cli"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.1.7/jtorrent_0.1.7_darwin_arm64.tar.gz"
      sha256 "a95cde6fcda4833d17001f9627a06424d869575d31d61c3eb4257859817cd568"
    else
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.1.7/jtorrent_0.1.7_darwin_amd64.tar.gz"
      sha256 "cd776456b4a431a95329ff0667c342577e45ebca376769bcc57fcd605429ebb4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.1.7/jtorrent_0.1.7_linux_arm64.tar.gz"
      sha256 "0c322b0bb03e5f5edd2bc2d5d0e21792c1835810166d6c5d14d0d98b4be19914"
    else
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.1.7/jtorrent_0.1.7_linux_amd64.tar.gz"
      sha256 "78d5d995ab7a6800b34623fbadbd4265c0dd298ab47cbcb6eecd0c1951e95fc2"
    end
  end

  def install
    bin.install "jtorrent"
    (share/"jtorrent/licenses").install "THIRD-PARTY-NOTICES.txt"
  end

  test do
    assert_match "jtorrent version #{version}", shell_output("#{bin}/jtorrent --version")
  end
end
