cask "howlerops" do
  version "0.3.10"
  sha256 "b5e197d4738b7337c58fa1ab5d6f30fb6342efe885de84f195c2b83b26fa0ca6"

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
