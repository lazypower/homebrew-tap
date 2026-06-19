class Continuity < Formula
  desc "Persistent memory for AI coding agents"
  homepage "https://github.com/lazypower/continuity"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lazypower/continuity/releases/download/v#{version}/continuity-darwin-arm64"
      sha256 "41d39577b969e76078f525815a172e64c03e047b293872143656f7eb107e2ba5"
    end

    on_intel do
      url "https://github.com/lazypower/continuity/releases/download/v#{version}/continuity-darwin-amd64"
      sha256 "125b85f8639f323a180b3105e68e57762467fadf6bd5471b2abf2ae6d63f64be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lazypower/continuity/releases/download/v#{version}/continuity-linux-arm64"
      sha256 "56d30fa529645af69f5a0aaaccca469afd23f82989afdd16281c0ade8ce2f2a5"
    end

    on_intel do
      url "https://github.com/lazypower/continuity/releases/download/v#{version}/continuity-linux-amd64"
      sha256 "52a9cbe76f8dd9443123674b2262d7150eebf5520308131393b105606347df4e"
    end
  end

  def install
    bin.install Dir["continuity-*"].first => "continuity"
  end

  test do
    assert_match "continuity", shell_output("#{bin}/continuity version")
  end
end
