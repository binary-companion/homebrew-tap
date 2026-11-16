cask "timetug" do
  version "2.2.1"
  sha256 "a48ecbbe628eb3bb5fb2cd6323d5800672d4c20a9e53293e4ab986abc595becf"

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
