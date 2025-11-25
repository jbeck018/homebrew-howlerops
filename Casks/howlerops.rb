cask "howlerops" do
  version "0.7.17"
  sha256 "9f174fbf16b5093300d1b43cbc29385c73885f4df12f3b867c04dabf41af4202"

  url "https://github.com/jbeck018/howlerops/releases/download/v#{version}/howlerops-darwin-universal.tar.gz"
  name "HowlerOps"
  desc "Powerful SQL client with AI capabilities"
  homepage "https://github.com/jbeck018/howlerops"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "howlerops.app"

  zap trash: [
    "~/Library/Application Support/howlerops",
    "~/Library/Caches/howlerops",
    "~/Library/Preferences/com.howlerops.app.plist",
    "~/Library/Saved Application State/com.howlerops.app.savedState",
  ]
end
