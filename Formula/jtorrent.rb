class Jtorrent < Formula
  desc "Download torrents through the JTorrent cloud from your terminal"
  homepage "https://github.com/OxJacky/jtorrent-cli"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.2.3/jtorrent_0.2.3_darwin_arm64.tar.gz"
      sha256 "dcc59e9d8b2fccd30e321efb58f6451695a5da0fbe29c5fdba303629842c7b75"
    else
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.2.3/jtorrent_0.2.3_darwin_amd64.tar.gz"
      sha256 "f6f214d239521e90fe2ee1a2448f97aebbc9edd5eaf2fb0580e62973c3877c62"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.2.3/jtorrent_0.2.3_linux_arm64.tar.gz"
      sha256 "4b166f3d12644252c2cab7c834e34d093ceb075ea839022befdd239488b4c2eb"
    else
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.2.3/jtorrent_0.2.3_linux_amd64.tar.gz"
      sha256 "9f5e3f37d90f150a79c65152389176e48edee73aa17442402083506130ad1706"
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
