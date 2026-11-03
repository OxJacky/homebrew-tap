class Jtorrent < Formula
  desc "Download torrents through the JTorrent cloud from your terminal"
  homepage "https://github.com/OxJacky/jtorrent-cli"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.2.4/jtorrent_0.2.4_darwin_arm64.tar.gz"
      sha256 "0efde5d15738f338053551a6bad89f7ae602d922eac7c5ac232cb0a481121c5f"
    else
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.2.4/jtorrent_0.2.4_darwin_amd64.tar.gz"
      sha256 "9ad5604083e8589cc6d5e9302dc80fbfceb062eee0ea2949826912bafd030329"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.2.4/jtorrent_0.2.4_linux_arm64.tar.gz"
      sha256 "e9482bd312a86df72b9b99a16a07f4882154912f5e304d85ebdff73453f23891"
    else
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.2.4/jtorrent_0.2.4_linux_amd64.tar.gz"
      sha256 "6c4a4bb48015344848ab6f232d134cc73754be6c294d5f80e65d29fe52e3f540"
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
