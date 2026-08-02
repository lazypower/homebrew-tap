class ContinuityDev < Formula
  desc "Persistent memory for AI coding agents (rolling dev build of main)"
  homepage "https://github.com/lazypower/continuity"
  version "2026.08.02.020320"
  license "MIT"

  # Tracks the tip of main via the rolling "dev" prerelease and installs
  # the same "continuity" binary as the stable formula, so the dev and
  # stable channels are mutually exclusive.
  conflicts_with "continuity", because: "both install the continuity binary"

  on_macos do
    on_arm do
      url "https://github.com/lazypower/continuity/releases/download/dev/continuity-darwin-arm64"
      sha256 "a8d9c0886376cdd7ce9163feaa7129f75419ecb4952b44ad743ac4d9002618a9"

      def install
        bin.install "continuity-darwin-arm64" => "continuity"
      end
    end

    on_intel do
      url "https://github.com/lazypower/continuity/releases/download/dev/continuity-darwin-amd64"
      sha256 "7acd6c1f307c443efb48a55047f4720f5d964d91b76adc5cdb388502b87a97c2"

      def install
        bin.install "continuity-darwin-amd64" => "continuity"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lazypower/continuity/releases/download/dev/continuity-linux-arm64"
      sha256 "f0e234f2ff8cb539c63bb9f908c505af95eb0592d48918c2da021a4b4d6a4db4"

      def install
        bin.install "continuity-linux-arm64" => "continuity"
      end
    end

    on_intel do
      url "https://github.com/lazypower/continuity/releases/download/dev/continuity-linux-amd64"
      sha256 "96037fdb7563953842311ee3daad23e3b54762c13a05ae1063913159dbe280d9"

      def install
        bin.install "continuity-linux-amd64" => "continuity"
      end
    end
  end

  test do
    assert_match "continuity", shell_output("#{bin}/continuity version")
  end
end
