class Continuity < Formula
  desc "Persistent memory for AI coding agents"
  homepage "https://github.com/lazypower/continuity"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lazypower/continuity/releases/download/v#{version}/continuity-darwin-arm64"
      sha256 "b844d55b397ea009ad647dc19fc0fd7e6cb3bd5b27c5b6093a34fe0af363ad33"

      def install
        bin.install "continuity-darwin-arm64" => "continuity"
      end
    end

    on_intel do
      url "https://github.com/lazypower/continuity/releases/download/v#{version}/continuity-darwin-amd64"
      sha256 "58c0f6f687c100f9d3f1e979143ef25c543a142cbc065a1a6a18e27a3b5bb6ce"

      def install
        bin.install "continuity-darwin-amd64" => "continuity"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lazypower/continuity/releases/download/v#{version}/continuity-linux-arm64"
      sha256 "dd44d4784e844f86367985606102b9c26c60ebaaffa67cc0d39e8029eccd4202"

      def install
        bin.install "continuity-linux-arm64" => "continuity"
      end
    end

    on_intel do
      url "https://github.com/lazypower/continuity/releases/download/v#{version}/continuity-linux-amd64"
      sha256 "d1ade1c539feb67bb86c5998c43769c57dcad2f9012a150be7ee9bbc0c34bdfa"

      def install
        bin.install "continuity-linux-amd64" => "continuity"
      end
    end
  end

  test do
    assert_match "continuity", shell_output("#{bin}/continuity version")
  end
end
