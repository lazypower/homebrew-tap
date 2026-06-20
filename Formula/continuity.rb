class Continuity < Formula
  desc "Persistent memory for AI coding agents"
  homepage "https://github.com/lazypower/continuity"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lazypower/continuity/releases/download/v#{version}/continuity-darwin-arm64"
      sha256 "7856a9d96ac94ec4551018dfcbd841b7fa246f0e0b6d2ed6f41113b5921f88e0"

      def install
        bin.install "continuity-darwin-arm64" => "continuity"
      end
    end

    on_intel do
      url "https://github.com/lazypower/continuity/releases/download/v#{version}/continuity-darwin-amd64"
      sha256 "dbbeb415688057818c1101344d31f14e30979b7a18aa30ee68921ae6ee30ca64"

      def install
        bin.install "continuity-darwin-amd64" => "continuity"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lazypower/continuity/releases/download/v#{version}/continuity-linux-arm64"
      sha256 "c8f097bf254e51735a92246c7c76d41fd2c9a79b5bb5e77da33ec998b2218cd9"

      def install
        bin.install "continuity-linux-arm64" => "continuity"
      end
    end

    on_intel do
      url "https://github.com/lazypower/continuity/releases/download/v#{version}/continuity-linux-amd64"
      sha256 "c381fb30456615fba335a8056776dd843e37833e1758c7ddc7f1007d3a8a4fe1"

      def install
        bin.install "continuity-linux-amd64" => "continuity"
      end
    end
  end

  test do
    assert_match "continuity", shell_output("#{bin}/continuity version")
  end
end
