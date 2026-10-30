class Jtorrent < Formula
  desc "Download torrents through the JTorrent cloud from your terminal"
  homepage "https://github.com/OxJacky/jtorrent-cli"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.2.1/jtorrent_0.2.1_darwin_arm64.tar.gz"
      sha256 "3994e6e05f4dc5efcf29821cea00e83e65798d637a8cc41cb1a4f8f529e54bd8"
    else
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.2.1/jtorrent_0.2.1_darwin_amd64.tar.gz"
      sha256 "bba4cd73fa0e24130a26918ccbd1da511bd983b87484dd4ce0536a969a2b2d45"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.2.1/jtorrent_0.2.1_linux_arm64.tar.gz"
      sha256 "2be911233f953a1c0822277820daf15ab8578ca69f6437762ba4f9f91a44111f"
    else
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.2.1/jtorrent_0.2.1_linux_amd64.tar.gz"
      sha256 "9a09be20280b32a13f6adf635c7965e6547ce702c210dd26066fe9ce8a717634"
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
