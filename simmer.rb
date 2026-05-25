class Simmer < Formula
  desc "Stream iOS Simulator to your browser with touch, keyboard, and terminal"
  homepage "https://github.com/joshdholtz/simmer"
  url "https://github.com/joshdholtz/simmer/releases/download/v0.5.1/simmer-v0.5.1-arm64.tar.gz"
  sha256 "b755c864864028fd90f87073cfdc9435ee42fd4568fb797a3ecce91c26574345"
  license "MIT"
  version "0.5.1"

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
