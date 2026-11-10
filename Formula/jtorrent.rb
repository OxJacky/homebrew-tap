class Jtorrent < Formula
  desc "Download torrents through the JTorrent cloud from your terminal"
  homepage "https://github.com/OxJacky/jtorrent-cli"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.2.5/jtorrent_0.2.5_darwin_arm64.tar.gz"
      sha256 "81cced311dfc6af20ab2f4d737c0fc742cc98723d77cf500792f9738c74c7d3f"
    else
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.2.5/jtorrent_0.2.5_darwin_amd64.tar.gz"
      sha256 "3e9a4534df13eb2e15987bf7f228c5d5485c945c2be828ae481085c4096a0b3c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.2.5/jtorrent_0.2.5_linux_arm64.tar.gz"
      sha256 "2b427cf8d8eed88dcb265c2497b06e0201b674726211fb576822c51737dc61bb"
    else
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.2.5/jtorrent_0.2.5_linux_amd64.tar.gz"
      sha256 "f39a008076394fc741206808f714c0cfa7f952c840e82c8111670e119f47363b"
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
