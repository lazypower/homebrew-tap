class Clorch < Formula
  desc "Command center for your Claude Code fleet"
  homepage "https://github.com/lazypower/clorch"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lazypower/clorch/releases/download/v#{version}/clorch-darwin-arm64"
      sha256 "fa12bfd8c515f8ae08759ea6870e7ce313fd32f60e0eee2d62b34af6ba61b179"
    end

    on_intel do
      url "https://github.com/lazypower/clorch/releases/download/v#{version}/clorch-darwin-amd64"
      sha256 "a81413bbd1434c3a220f609264e77aa4e8e5a63ffebe020da8decff93bf1032e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lazypower/clorch/releases/download/v#{version}/clorch-linux-arm64"
      sha256 "96f5f6f1771448df7f60435c39f14d4ed721270123b2e93ea9eda518e8b1aede"
    end

    on_intel do
      url "https://github.com/lazypower/clorch/releases/download/v#{version}/clorch-linux-amd64"
      sha256 "2e299865c1181c249e9061148d0b6569ee4a5a2b29cd1809ccd5b024bb66a3ec"
    end
  end

  def install
    bin.install Dir["clorch-*"].first => "clorch"
  end

  test do
    assert_match "clorch", shell_output("#{bin}/clorch version")
  end
end
