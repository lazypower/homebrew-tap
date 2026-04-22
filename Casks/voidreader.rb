cask "voidreader" do
  version "1.1.0"
  sha256 "9e558095da00d54bf16c84df825eb721b99478448f50ff116c99dc5dd8637636"

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
