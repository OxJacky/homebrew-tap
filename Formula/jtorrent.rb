class Jtorrent < Formula
  desc "Download torrents through the JTorrent cloud from your terminal"
  homepage "https://github.com/OxJacky/jtorrent-cli"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.2.7/jtorrent_0.2.7_darwin_arm64.tar.gz"
      sha256 "57953164c26ac61492f7c04f216676d4f1771928f7c4c72880b7485733bbb29f"
    else
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.2.7/jtorrent_0.2.7_darwin_amd64.tar.gz"
      sha256 "fe9957ba17dfdf838f20b1c5362f424be7c89775674dc50d5a28ebd36bf477b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.2.7/jtorrent_0.2.7_linux_arm64.tar.gz"
      sha256 "d48c9d0a25863a674a09cf40c2b5f919684cab56be5fd61c5dd8643aa60bf13f"
    else
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.2.7/jtorrent_0.2.7_linux_amd64.tar.gz"
      sha256 "589b91c1b288b565647d108e05ad421903ae10d6ba55c3e8361b6f1e37040692"
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
