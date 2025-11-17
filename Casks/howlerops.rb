cask "howlerops" do
  version "0.4.1"
  sha256 "88f4adf92a247bb69dc2665c65d9a2a46e977e1e99382b3b47a1b1575a73e50a"

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
