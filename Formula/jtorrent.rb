class Jtorrent < Formula
  desc "Download torrents through the JTorrent cloud from your terminal"
  homepage "https://github.com/OxJacky/jtorrent-cli"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.2.2/jtorrent_0.2.2_darwin_arm64.tar.gz"
      sha256 "48965f12f03c4957e7b3374827dca2ae34cae5497e9472e71c07802b358a9bb5"
    else
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.2.2/jtorrent_0.2.2_darwin_amd64.tar.gz"
      sha256 "b531ff493c73ab33459f005966395d5c4bc5ee4ab5269b227cdab075add72505"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.2.2/jtorrent_0.2.2_linux_arm64.tar.gz"
      sha256 "930d0cb8be3d9c826e1b18eba5dfe9ffb450d6e8e37c33bbaa6dbfac16c9aa94"
    else
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.2.2/jtorrent_0.2.2_linux_amd64.tar.gz"
      sha256 "0e69f69bdef507b4d98aadfeadb827b59406bd179147d4ead7f5ad38fd897f21"
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
