class Jtorrent < Formula
  desc "Download torrents through the JTorrent cloud from your terminal"
  homepage "https://github.com/OxJacky/jtorrent-cli"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.2.6/jtorrent_0.2.6_darwin_arm64.tar.gz"
      sha256 "49d128c059bc30c1a1f36742662039d91479d0302c8bc581d0f3760af9a03e2c"
    else
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.2.6/jtorrent_0.2.6_darwin_amd64.tar.gz"
      sha256 "63783b949bf0b515570aea06dce32ae487ce76d71a2f86a9cd758006aef99ac0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.2.6/jtorrent_0.2.6_linux_arm64.tar.gz"
      sha256 "a7096353d5b9bd3a33152e1d148ab0e33ce9efacf1c22601b836b0c92a19c390"
    else
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.2.6/jtorrent_0.2.6_linux_amd64.tar.gz"
      sha256 "db4249bdef31dbfc7aecb657771b5fa8d214a6f7f471d6ab7afa1fa34a7d7c8a"
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
