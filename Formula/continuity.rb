class Continuity < Formula
  desc "Persistent memory for AI coding agents"
  homepage "https://github.com/lazypower/continuity"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lazypower/continuity/releases/download/v#{version}/continuity-darwin-arm64"
      sha256 "670390b3ab6a40b887c7b2225d0e0e10fd6b3f68e97fae5e42f9446b14e3e165"

      def install
        bin.install "continuity-darwin-arm64" => "continuity"
      end
    end

    on_intel do
      url "https://github.com/lazypower/continuity/releases/download/v#{version}/continuity-darwin-amd64"
      sha256 "69082341f3ba36169f078d8f60d2b31af3bed63c947528e88d9bc445c5eb0c81"

      def install
        bin.install "continuity-darwin-amd64" => "continuity"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lazypower/continuity/releases/download/v#{version}/continuity-linux-arm64"
      sha256 "e21d1c02713eaefd2f891e761f9a920598a1fb5c633a24df0326dff6380d8491"

      def install
        bin.install "continuity-linux-arm64" => "continuity"
      end
    end

    on_intel do
      url "https://github.com/lazypower/continuity/releases/download/v#{version}/continuity-linux-amd64"
      sha256 "cfbb94b5ab23a15e0030c4989f5b1bc6952f04620cdb4b771936ac37b3c65fbd"

      def install
        bin.install "continuity-linux-amd64" => "continuity"
      end
    end
  end

  test do
    assert_match "continuity", shell_output("#{bin}/continuity version")
  end
end
