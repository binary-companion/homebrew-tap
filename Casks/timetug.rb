cask "timetug" do
  version "2.2.0"
  sha256 "63b1a56ef52fccbf8b7177609ba5dda8a9ba194e9f7f941c024f74e1269f59e5"

  url "https://github.com/binary-companion/timetug/releases/download/v#{version}/TimeTug-#{version}.dmg"
  name "TimeTug"
  desc "Menu bar app that takes over the screen shortly before meetings"
  homepage "https://timetug.binarycompanion.com/"

  # Stable releases only: `latest` on GitHub never points at a pre-release.
  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "TimeTug.app"

  zap trash: [
    "~/Library/Application Scripts/com.timetug.app*",
    "~/Library/Containers/com.timetug.app*",
    "~/Library/Group Containers/*.com.timetug.shared",
  ]
end
