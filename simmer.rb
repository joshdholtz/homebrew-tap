class Simmer < Formula
  desc "Stream iOS Simulator to your browser with touch, keyboard, and terminal"
  homepage "https://github.com/joshdholtz/simmer"
  url "https://github.com/joshdholtz/simmer/releases/download/v0.3.7/simmer-v0.3.7-arm64.tar.gz"
  sha256 "bed7eaec7f24f537fbbeb5371846fe0db296336cf65e6fe3ba9a69b7a1db622c"
  license "MIT"
  version "0.3.7"

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
