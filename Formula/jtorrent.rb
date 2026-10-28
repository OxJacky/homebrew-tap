class Jtorrent < Formula
  desc "Download torrents through the JTorrent cloud from your terminal"
  homepage "https://github.com/OxJacky/jtorrent-cli"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.1.3/jtorrent_0.1.3_darwin_arm64.tar.gz"
      sha256 "bd8960c87793854385b935dfad815c18f8f6d80405334deadd95335ce3a210ad"
    else
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.1.3/jtorrent_0.1.3_darwin_amd64.tar.gz"
      sha256 "92377d5d4ad51ee587862c854e2829c853a64d0139b0a5185cc84418f2fd08bb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.1.3/jtorrent_0.1.3_linux_arm64.tar.gz"
      sha256 "a1bdac6373536ba57305f5167e43fd80cac6d75555ffa1afa8f9d527f07697c5"
    else
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.1.3/jtorrent_0.1.3_linux_amd64.tar.gz"
      sha256 "3f56af31d9194b36d546a2be5a2cf52f86ea000f7aeb82bbdd85b9b2aacd6e35"
    end
  end

  def install
    bin.install "jtorrent"
  end

  test do
    assert_match "jtorrent version #{version}", shell_output("#{bin}/jtorrent --version")
  end
end
