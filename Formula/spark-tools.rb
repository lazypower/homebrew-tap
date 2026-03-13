class SparkTools < Formula
  desc "Pure Go toolchain for local LLM workflows on DGX Spark hardware"
  homepage "https://github.com/lazypower/spark-tools"
  license "MIT"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/lazypower/spark-tools/releases/download/v0.3.0/spark-tools-v0.3.0-darwin-arm64.tar.gz"
      sha256 "7ea746e323f17589def8eaccb6a6cb6c6065e4366949eb6b53071ccfa0f50c09"
    end
    on_intel do
      url "https://github.com/lazypower/spark-tools/releases/download/v0.3.0/spark-tools-v0.3.0-darwin-amd64.tar.gz"
      sha256 "9befdd6a3244fd18ade787e5b71935d3ac44eae2b29a3bd23d279527b6093fff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lazypower/spark-tools/releases/download/v0.3.0/spark-tools-v0.3.0-linux-arm64.tar.gz"
      sha256 "fb19c8ea1437cb4f88884de90b276f58a9a139f796d7ed22ce4f5b8414790687"
    end
    on_intel do
      url "https://github.com/lazypower/spark-tools/releases/download/v0.3.0/spark-tools-v0.3.0-linux-amd64.tar.gz"
      sha256 "c1e0ae5ba2dcb4a39745fa6300bfd5523ac5b4cac37487f18a5788e2de676554"
    end
  end

  def install
    bin.install "hfetch"
    bin.install "llm-run"
    bin.install "llm-bench"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hfetch --version")
  end
end
