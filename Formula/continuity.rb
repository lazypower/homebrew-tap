class Continuity < Formula
  desc "Persistent memory for AI coding agents"
  homepage "https://github.com/lazypower/continuity"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lazypower/continuity/releases/download/v#{version}/continuity-darwin-arm64"
      sha256 "e331668674a239e51a820069c51ed50b88b870e8ca28777454c6f87f00fc59c6"

      def install
        bin.install "continuity-darwin-arm64" => "continuity"
      end
    end

    on_intel do
      url "https://github.com/lazypower/continuity/releases/download/v#{version}/continuity-darwin-amd64"
      sha256 "0353806a783d959157f2ac652ca27ff4602ec778f38b02d53a2a5017c18cdede"

      def install
        bin.install "continuity-darwin-amd64" => "continuity"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lazypower/continuity/releases/download/v#{version}/continuity-linux-arm64"
      sha256 "eff19d0f3f8985b9ac0053008a88dba2151be3ebf80b5169422c297fa95ac6b4"

      def install
        bin.install "continuity-linux-arm64" => "continuity"
      end
    end

    on_intel do
      url "https://github.com/lazypower/continuity/releases/download/v#{version}/continuity-linux-amd64"
      sha256 "14713615b6dade27b3c754601fd86780efbc7e18009550a84cdced8243372515"

      def install
        bin.install "continuity-linux-amd64" => "continuity"
      end
    end
  end

  test do
    assert_match "continuity", shell_output("#{bin}/continuity version")
  end
end
