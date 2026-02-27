cask "voidreader" do
  version "1.0.3"
  sha256 "2b67b2964c5753e7ab2aa91207f13859481eaa4a3e4745bf814c9287f6f3e666"

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
