cask "voidreader" do
  version "1.2.1"
  sha256 "3b7c42f764c17697a028189a2babae1a324996bab435dde69c02289d7fc898b4"

  url "https://github.com/lazypower/VoidReader/releases/download/v#{version}/VoidReader_v#{version}.dmg"
  name "VoidReader"
  desc "Native macOS markdown viewer with a reader-first philosophy"
  homepage "https://github.com/lazypower/VoidReader"

  depends_on macos: ">= :sonoma"

  app "VoidReader.app"

  zap trash: [
    "~/Library/Preferences/com.voidreader.app.plist",
    "~/Library/Application Support/VoidReader",
  ]
end
