cask "timetug" do
  version "2.1.0"
  sha256 "ef0d0585d01a2b55d34b9190c22c7c984a894cf4b40a2f02140c1c333a7f6a2e"

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
