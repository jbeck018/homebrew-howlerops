cask "howlerops" do
  version "v0.7.18"
  sha256 "59a3013597b637b6913c524718047ec64e2081e617ab1fc9708e035544431bd9"

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
