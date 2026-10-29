class Jtorrent < Formula
  desc "Download torrents through the JTorrent cloud from your terminal"
  homepage "https://github.com/OxJacky/jtorrent-cli"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.1.6/jtorrent_0.1.6_darwin_arm64.tar.gz"
      sha256 "a193abd3c607e0620a705531cec8dc617c080c1fc5d66f4cbdb68299d4435f0a"
    else
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.1.6/jtorrent_0.1.6_darwin_amd64.tar.gz"
      sha256 "b3d2ece153f1a164a626124d263368a711ec8ef1850cda8921218e7df90a913e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.1.6/jtorrent_0.1.6_linux_arm64.tar.gz"
      sha256 "2cb6ef6433b459da236a6655784e3cfdd98f56f0ddc6507e288c2ba1c154087a"
    else
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.1.6/jtorrent_0.1.6_linux_amd64.tar.gz"
      sha256 "e6e651177de43dbf83e6a8935b7dc11455e4b979afc6f5bed7d05b99f8f4182c"
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
