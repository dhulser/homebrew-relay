cask "relay" do
  version "1.2.0"
  sha256 "0e093b71e3b98fc5c186abb784a7e63bfb194ce963db3c5cc37c621e3bfe8e81"

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
