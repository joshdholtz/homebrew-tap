class Simmer < Formula
  desc "Stream iOS Simulator to your browser with touch, keyboard, and terminal"
  homepage "https://github.com/joshdholtz/simmer"
  url "https://github.com/joshdholtz/simmer/releases/download/v0.3.1/simmer-v0.3.1-arm64.tar.gz"
  sha256 "bc94b9945ca4252f0726fb15a28fb77601859808ebcf09017a383800625c7388"
  license "MIT"
  version "0.3.1"

  def install
    bin.install "simmer"
    bin.install "rotate_sim"
  end

  def caveats
    <<~EOS
      Fast mode (Quartz capture) requires macOS permissions:
        System Settings → Privacy & Security → Screen Recording → simmer
        System Settings → Privacy & Security → Accessibility → rotate_sim

      Compat mode works without permissions but needs idb:
        brew tap facebook/fb && brew install idb-companion
    EOS
  end

  test do
    system "#{bin}/simmer", "--help"
  end
end
