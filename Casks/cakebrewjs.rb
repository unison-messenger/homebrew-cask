cask "cakebrewjs" do
  version "0.1.32"
  sha256 "33a5edb5933a3efb3a4df25269bc5788284e43304053dcb0aa0c9be07d3943c4"

  url "https://downloads.sourceforge.net/cakebrewjs/v#{version}/cakebrewjs-#{version}-mac.zip"
  name "cakebrewjs"
  desc "Homebrew GUI app written in electron"
  homepage "https://sourceforge.net/projects/cakebrewjs"

  livecheck do
    url "https://sourceforge.net/projects/cakebrewjs/rss?"
    strategy :page_match
    regex(/cakebrewjs-(\d+(?:\.\d+)*)-mac\.zip/i)
  end

  app "cakebrewjs.app"

  zap trash: [
    "~/Library/Application Support/cakebrewjs",
    "~/Library/Caches/cakebrewjs",
    "~/Library/Preferences/com.electron.cakebrewjs.helper.plist",
    "~/Library/Preferences/com.electron.cakebrewjs.plist",
  ]
end
