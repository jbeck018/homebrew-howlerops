cask "howlerops" do
  version "0.0.5-alpha.15"
  sha256 "e454c525a17a311c703d3df18a4d9c2f4b7fed17b4822e51e82e874709bb2274"

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
