class Continuity < Formula
  desc "Persistent memory for AI coding agents"
  homepage "https://github.com/lazypower/continuity"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lazypower/continuity/releases/download/v#{version}/continuity-darwin-arm64"
      sha256 "6023117c920229dbaa5e719a6d68239207c6625cc2752e60fee457211dd38ed4"

      def install
        bin.install "continuity-darwin-arm64" => "continuity"
      end
    end

    on_intel do
      url "https://github.com/lazypower/continuity/releases/download/v#{version}/continuity-darwin-amd64"
      sha256 "82c8e2e4e0a0e440c95bdb04706141770aee4a6ce3566f8f92a325fdedcc27ba"

      def install
        bin.install "continuity-darwin-amd64" => "continuity"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lazypower/continuity/releases/download/v#{version}/continuity-linux-arm64"
      sha256 "68060db8f067cb162709a5bfa410d3e7af60de81486a7221334c6690c2dc3e10"

      def install
        bin.install "continuity-linux-arm64" => "continuity"
      end
    end

    on_intel do
      url "https://github.com/lazypower/continuity/releases/download/v#{version}/continuity-linux-amd64"
      sha256 "f6318723f40448b632e6221c1f286ea15a3b05426ad9b69e9b5b34eab9d03dd6"

      def install
        bin.install "continuity-linux-amd64" => "continuity"
      end
    end
  end

  test do
    assert_match "continuity", shell_output("#{bin}/continuity version")
  end
end
