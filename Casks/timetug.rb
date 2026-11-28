cask "timetug" do
  version "3.1.0"
  sha256 "914be6c96046d1635753a289ec00503f516876a525a31cb99aeb1f4be3fa01f3"

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
