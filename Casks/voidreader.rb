cask "voidreader" do
  version "1.2.2"
  sha256 "2ce2dc1002f2eccf0c0532a828e15915956d6ed426e70643743e258eb510de77"

  url "https://github.com/lazypower/VoidReader/releases/download/v#{version}/VoidReader_v#{version}.dmg"
  name "VoidReader"
  desc "Native macOS markdown viewer with a reader-first philosophy"
  homepage "https://github.com/lazypower/VoidReader"

  depends_on macos: :sonoma

  app "VoidReader.app"

  zap trash: [
    "~/Library/Preferences/com.voidreader.app.plist",
    "~/Library/Application Support/VoidReader",
  ]
end
