class ContinuityDev < Formula
  desc "Persistent memory for AI coding agents (rolling dev build of main)"
  homepage "https://github.com/lazypower/continuity"
  version "2026.07.13.024022"
  license "MIT"

  # Tracks the tip of main via the rolling "dev" prerelease and installs
  # the same "continuity" binary as the stable formula, so the dev and
  # stable channels are mutually exclusive.
  conflicts_with "continuity", because: "both install the continuity binary"

  on_macos do
    on_arm do
      url "https://github.com/lazypower/continuity/releases/download/dev/continuity-darwin-arm64"
      sha256 "241064050a90d9007cf9d9bc5219a1182a686ac05eecf20b6d5a626c9c8385bb"

      def install
        bin.install "continuity-darwin-arm64" => "continuity"
      end
    end

    on_intel do
      url "https://github.com/lazypower/continuity/releases/download/dev/continuity-darwin-amd64"
      sha256 "20cad45f0887ffdcfb0d3204c480e8f9e3239d4b403dfd10690ea7ffa631d2e3"

      def install
        bin.install "continuity-darwin-amd64" => "continuity"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lazypower/continuity/releases/download/dev/continuity-linux-arm64"
      sha256 "5ff256c12531649b79b91c3225858dd546e00d0a8df73c064a60b7a40c5e8f7f"

      def install
        bin.install "continuity-linux-arm64" => "continuity"
      end
    end

    on_intel do
      url "https://github.com/lazypower/continuity/releases/download/dev/continuity-linux-amd64"
      sha256 "ff1de6023187a9e27858f251820aaf583aa86258eb9849dc23dcaac843e417b5"

      def install
        bin.install "continuity-linux-amd64" => "continuity"
      end
    end
  end

  test do
    assert_match "continuity", shell_output("#{bin}/continuity version")
  end
end
