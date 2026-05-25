class Simmer < Formula
  desc "Stream iOS Simulator to your browser with touch, keyboard, and terminal"
  homepage "https://github.com/joshdholtz/simmer"
  url "https://github.com/joshdholtz/simmer/releases/download/v0.3.2/simmer-v0.3.2-arm64.tar.gz"
  sha256 "58ef279312b34829c93680cb100c658086f48e5d711d948b8bb5ca432cd21a5e"
  license "MIT"
  version "0.3.2"

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
