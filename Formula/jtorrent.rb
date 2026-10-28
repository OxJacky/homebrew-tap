class Jtorrent < Formula
  desc "Download torrents through the JTorrent cloud from your terminal"
  homepage "https://github.com/OxJacky/jtorrent-cli"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.1.4/jtorrent_0.1.4_darwin_arm64.tar.gz"
      sha256 "4b2c06e3b60c4c985070d7057bef739f682cdbc187216466507ea10fffdc3dd5"
    else
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.1.4/jtorrent_0.1.4_darwin_amd64.tar.gz"
      sha256 "53cb1ec9095500d098ec8951cce767d359bf4c15cd7578ab2c171accc50b8d17"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.1.4/jtorrent_0.1.4_linux_arm64.tar.gz"
      sha256 "4a65b388952d3cd9e2e331cb34a0d6fe6cad92c840d7be9dca0f59cfe9f5dff7"
    else
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.1.4/jtorrent_0.1.4_linux_amd64.tar.gz"
      sha256 "2be813a31127d5d1d6847a3e269d9d65403c9b86469d420e3467ed507a258aaa"
    end
  end

  def install
    bin.install "jtorrent"
  end

  test do
    assert_match "jtorrent version #{version}", shell_output("#{bin}/jtorrent --version")
  end
end
