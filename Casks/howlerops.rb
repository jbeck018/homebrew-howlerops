cask "howlerops" do
  version "0.0.5-alpha.17"
  sha256 "d305469e961092f052c600517f455e34cd4d249614905e8c559e06145f5ed7d8"

  url "https://github.com/jbeck018/howlerops/releases/download/v#{version}/howlerops-darwin-universal.zip"
  name "HowlerOps"
  desc "A powerful desktop SQL client built with Wails"
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
