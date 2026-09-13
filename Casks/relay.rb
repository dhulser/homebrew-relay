cask "relay" do
  version "1.0.0"
  sha256 "78964eb2e761956f4196c837b5dc8737fe0e95521d2e5beb43e964feccc91fe2"

  url "https://github.com/dhulser/Relay/releases/download/v#{version}/Relay.dmg"
  name "Relay: Live Translator"
  desc "Live translated subtitles for calls and anything else playing on your Mac"
  homepage "https://github.com/dhulser/Relay"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Relay.app"

  zap trash: [
    "~/Library/Application Support/co.kevel.Relay",
    "~/Library/Preferences/co.kevel.Relay.plist",
  ]
end
