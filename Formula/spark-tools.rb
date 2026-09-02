class SparkTools < Formula
  desc "Pure Go toolchain for local LLM workflows on DGX Spark hardware"
  homepage "https://github.com/lazypower/spark-tools"
  license "MIT"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/lazypower/spark-tools/releases/download/v0.4.0/spark-tools-v0.4.0-darwin-arm64.tar.gz"
      sha256 "fadbf34b32057b81206fd13f7e24c1645810fb45e2a951ca6c98aa0ccf6e3d74"
    end
    on_intel do
      url "https://github.com/lazypower/spark-tools/releases/download/v0.4.0/spark-tools-v0.4.0-darwin-amd64.tar.gz"
      sha256 "5927ba40b7261ee4b5e4f95ada93d5c69f5bb8ad4f9dde0d84f2a16bbe9ae552"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lazypower/spark-tools/releases/download/v0.4.0/spark-tools-v0.4.0-linux-arm64.tar.gz"
      sha256 "19aef7b6400b1086a2ff494f5c64a6c26862f591620d1a170ed3d38609629de3"
    end
    on_intel do
      url "https://github.com/lazypower/spark-tools/releases/download/v0.4.0/spark-tools-v0.4.0-linux-amd64.tar.gz"
      sha256 "d9ad4d81c996b9662d375c98f2bdabcba621d0537e12f886836de1dd2ac20cfc"
    end
  end

  def install
    bin.install "hfetch"
    bin.install "llm-run"
    bin.install "llm-serve"
    bin.install "llm-chat"
    bin.install "llm-bench"
    bin.install "llm-tidy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hfetch --version")
  end
end
