class ContinuityDev < Formula
  desc "Persistent memory for AI coding agents (rolling dev build of main)"
  homepage "https://github.com/lazypower/continuity"
  version "2026.08.21.021941"
  license "MIT"

  # Tracks the tip of main via the rolling "dev" prerelease and installs
  # the same "continuity" binary as the stable formula, so the dev and
  # stable channels are mutually exclusive.
  conflicts_with "continuity", because: "both install the continuity binary"

  on_macos do
    on_arm do
      url "https://github.com/lazypower/continuity/releases/download/dev/continuity-darwin-arm64"
      sha256 "a4ad419be73002ce51892f30f8d2d58fd9c7aebc37406d4322d508c0bbe01cb8"

      def install
        bin.install "continuity-darwin-arm64" => "continuity"
      end
    end

    on_intel do
      url "https://github.com/lazypower/continuity/releases/download/dev/continuity-darwin-amd64"
      sha256 "642ee5e8c2cf2ce1f1f3820c03910490bffd42dff964696997005f63a1674c6f"

      def install
        bin.install "continuity-darwin-amd64" => "continuity"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lazypower/continuity/releases/download/dev/continuity-linux-arm64"
      sha256 "4cda9ffa313d7624ddb9e8ac4d7ca8aeb1b25a608279fec9cccc5a5e9c339666"

      def install
        bin.install "continuity-linux-arm64" => "continuity"
      end
    end

    on_intel do
      url "https://github.com/lazypower/continuity/releases/download/dev/continuity-linux-amd64"
      sha256 "69a9e8803e4b11b2a66857784a574ac195a84385be7e2d43bece31cf72f4f837"

      def install
        bin.install "continuity-linux-amd64" => "continuity"
      end
    end
  end

  test do
    assert_match "continuity", shell_output("#{bin}/continuity version")
  end
end
