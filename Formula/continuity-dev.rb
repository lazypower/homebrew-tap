class ContinuityDev < Formula
  desc "Persistent memory for AI coding agents (rolling dev build of main)"
  homepage "https://github.com/lazypower/continuity"
  version "2026.07.08.023713"
  license "MIT"

  # Tracks the tip of main via the rolling "dev" prerelease and installs
  # the same "continuity" binary as the stable formula, so the dev and
  # stable channels are mutually exclusive.
  conflicts_with "continuity", because: "both install the continuity binary"

  on_macos do
    on_arm do
      url "https://github.com/lazypower/continuity/releases/download/dev/continuity-darwin-arm64"
      sha256 "d659dcc013e6fdece6fb7ec9672d2d123d35806290d11bbcf94c58e029b0a2b9"

      def install
        bin.install "continuity-darwin-arm64" => "continuity"
      end
    end

    on_intel do
      url "https://github.com/lazypower/continuity/releases/download/dev/continuity-darwin-amd64"
      sha256 "27af21168b4e45dd21865aa50d66b492032429f3745a6684b201c21c7c3f40ff"

      def install
        bin.install "continuity-darwin-amd64" => "continuity"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lazypower/continuity/releases/download/dev/continuity-linux-arm64"
      sha256 "a10fd78fe9e3bd9175d8917099a5f1773b4e6acb799b236a815f23887c9b4a09"

      def install
        bin.install "continuity-linux-arm64" => "continuity"
      end
    end

    on_intel do
      url "https://github.com/lazypower/continuity/releases/download/dev/continuity-linux-amd64"
      sha256 "f1618bd062f683048d0e23cf3be624cc0609865d6f2460a7919e1cacabdc9570"

      def install
        bin.install "continuity-linux-amd64" => "continuity"
      end
    end
  end

  test do
    assert_match "continuity", shell_output("#{bin}/continuity version")
  end
end
