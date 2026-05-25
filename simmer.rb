class Simmer < Formula
  desc "Stream iOS Simulator to your browser with touch, keyboard, and terminal"
  homepage "https://github.com/joshdholtz/simmer"
  url "https://github.com/joshdholtz/simmer/releases/download/v0.5.2/simmer-v0.5.2-arm64.tar.gz"
  sha256 "e1459b116ec7381c78fdf5ab22bfbaf35d8a029fe419c8d9e9b4d7d0026f8a41"
  license "MIT"
  version "0.5.2"

  def install
    bin.install "simmer"
    bin.install "rotate_sim"
  end

  def caveats
    <<~EOS
      Fast mode (Quartz capture) requires macOS permissions:
        System Settings → Privacy & Security → Screen Recording → simmer
        System Settings → Privacy & Security → Accessibility → rotate_sim (rotate fallback)

      Compat mode works without permissions but needs idb:
        brew tap facebook/fb && brew install idb-companion
    EOS
  end

  test do
    system "#{bin}/simmer", "--help"
  end
end
