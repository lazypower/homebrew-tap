class Clorch < Formula
  desc "Command center for your Claude Code fleet"
  homepage "https://github.com/lazypower/clorch"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lazypower/clorch/releases/download/v#{version}/clorch-darwin-arm64"
      sha256 "e34f080e677ef8c41732c18d792741d9b39005242f1835450c9634208d3b6913"

      def install
        bin.install "clorch-darwin-arm64" => "clorch"
      end
    end

    on_intel do
      url "https://github.com/lazypower/clorch/releases/download/v#{version}/clorch-darwin-amd64"
      sha256 "1a15063f404ea8defd63930f097bc9e62492bd85197cdab7683188a9695c764a"

      def install
        bin.install "clorch-darwin-amd64" => "clorch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lazypower/clorch/releases/download/v#{version}/clorch-linux-arm64"
      sha256 "519e0b28475d9eee8836bbcc39f81680ab5ea1b462007c85955d9e37bde7a322"

      def install
        bin.install "clorch-linux-arm64" => "clorch"
      end
    end

    on_intel do
      url "https://github.com/lazypower/clorch/releases/download/v#{version}/clorch-linux-amd64"
      sha256 "410180fc052dae48cccb9937a053fa76233c28ba2ae4a554fe68f0c3340d904f"

      def install
        bin.install "clorch-linux-amd64" => "clorch"
      end
    end
  end

  test do
    assert_match "clorch", shell_output("#{bin}/clorch version")
  end
end
