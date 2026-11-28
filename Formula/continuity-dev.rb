class ContinuityDev < Formula
  desc "Persistent memory for AI coding agents (rolling dev build of main)"
  homepage "https://github.com/lazypower/continuity"
  version "2026.11.28.025819"
  license "MIT"

  # Tracks the tip of main via the rolling "dev" prerelease and installs
  # the same "continuity" binary as the stable formula, so the dev and
  # stable channels are mutually exclusive.
  conflicts_with "continuity", because: "both install the continuity binary"

  on_macos do
    on_arm do
      url "https://github.com/lazypower/continuity/releases/download/dev/continuity-darwin-arm64"
      sha256 "f264429db5173b0c14db00594ea13e19d5e90005eb19f267b9a1a34e7f24b612"

      def install
        bin.install "continuity-darwin-arm64" => "continuity"
      end
    end

    on_intel do
      url "https://github.com/lazypower/continuity/releases/download/dev/continuity-darwin-amd64"
      sha256 "144c2b716b1cc346a3bff921ec5bfaa04e66186e3d29466daec9ecfb19eae33f"

      def install
        bin.install "continuity-darwin-amd64" => "continuity"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lazypower/continuity/releases/download/dev/continuity-linux-arm64"
      sha256 "68d69a4059490e90605aa261a5e0fe0c76aba89e38c36c86e4305264a93d24b6"

      def install
        bin.install "continuity-linux-arm64" => "continuity"
      end
    end

    on_intel do
      url "https://github.com/lazypower/continuity/releases/download/dev/continuity-linux-amd64"
      sha256 "19511dfa98eb552d2399ef6eb0cf057925a145a542064ebf6c44b607fd3430dc"

      def install
        bin.install "continuity-linux-amd64" => "continuity"
      end
    end
  end

  test do
    assert_match "continuity", shell_output("#{bin}/continuity version")
  end
end
