class Clorch < Formula
  desc "Command center for your Claude Code fleet"
  homepage "https://github.com/lazypower/clorch"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lazypower/clorch/releases/download/v#{version}/clorch-darwin-arm64"
      sha256 "1ea875233313f0b3472da70005e8f935ca12c7d0b198585ad6314ffcef62ab63"

      def install
        bin.install "clorch-darwin-arm64" => "clorch"
      end
    end

    on_intel do
      url "https://github.com/lazypower/clorch/releases/download/v#{version}/clorch-darwin-amd64"
      sha256 "e49a3d924369604203691fa1c55eff8c6401b721eb21b97a7db69042371f237d"

      def install
        bin.install "clorch-darwin-amd64" => "clorch"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lazypower/clorch/releases/download/v#{version}/clorch-linux-arm64"
      sha256 "9edcffc607fe65bcc438c9b15957d72806af1577e1ca336ae028f4fc5954ca8b"

      def install
        bin.install "clorch-linux-arm64" => "clorch"
      end
    end

    on_intel do
      url "https://github.com/lazypower/clorch/releases/download/v#{version}/clorch-linux-amd64"
      sha256 "c312cfbae3a6b09784640ac0a351fe7772485ef2c9cd891f74dfe3f8f6d0e5b2"

      def install
        bin.install "clorch-linux-amd64" => "clorch"
      end
    end
  end

  test do
    assert_match "clorch", shell_output("#{bin}/clorch version")
  end
end
