class Jtorrent < Formula
  desc "Download torrents through the JTorrent cloud from your terminal"
  homepage "https://github.com/OxJacky/jtorrent-cli"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.2.0/jtorrent_0.2.0_darwin_arm64.tar.gz"
      sha256 "864c1a621d70280d128b4d209f8996613c2cc28263b10bc52f890689a3d3e06c"
    else
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.2.0/jtorrent_0.2.0_darwin_amd64.tar.gz"
      sha256 "f61f2562a64cc019ab48c2b492830156ab5b9e67e2f6bc9745cff1aa890a93be"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.2.0/jtorrent_0.2.0_linux_arm64.tar.gz"
      sha256 "878fa5853920924f9911ec2f4b37f50b8e1f865b2c481b06eb101e4c6e0acb81"
    else
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.2.0/jtorrent_0.2.0_linux_amd64.tar.gz"
      sha256 "7df0ea232f39128984c04f70fc599383081a4c5a1aa2b0e306be30c39c15784d"
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
