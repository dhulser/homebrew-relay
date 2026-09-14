cask "relay" do
  version "1.1.0"
  sha256 "449b40d0034f9910b7ce0ea20ac77bf0f0600bfecc070f4b8232091d6fed3c37"

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
