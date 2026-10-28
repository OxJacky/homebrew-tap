class Jtorrent < Formula
  desc "Download torrents through the JTorrent cloud from your terminal"
  homepage "https://github.com/OxJacky/jtorrent-cli"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.1.5/jtorrent_0.1.5_darwin_arm64.tar.gz"
      sha256 "dc62b8328efe29b8e5b0add4912929fb6ab9a5fb6031c8a176d89a9bf18a6f66"
    else
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.1.5/jtorrent_0.1.5_darwin_amd64.tar.gz"
      sha256 "ae66114b5a038f2c567c91064d749604e6176df1228abdfb9fd814a43ec391b9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.1.5/jtorrent_0.1.5_linux_arm64.tar.gz"
      sha256 "a129dece0cda4006a20726ee1f9eabae77f0685792d2052fb0979d464099eb67"
    else
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.1.5/jtorrent_0.1.5_linux_amd64.tar.gz"
      sha256 "edc344f4c7c2521ab6d41158e47c5e4634b7b51e5cf62ec1c51e201453ea9b01"
    end
  end

  def install
    bin.install "jtorrent"
  end

  test do
    assert_match "jtorrent version #{version}", shell_output("#{bin}/jtorrent --version")
  end
end
