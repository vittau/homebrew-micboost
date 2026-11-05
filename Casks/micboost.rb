cask "micboost" do
  version "0.2.3"
  sha256 "7a33867a32295e6e9fe567ca8767317117b1c9c2ba091b7208ada90eaa634ec6"

  url "https://github.com/vittau/MicBoost/releases/download/v#{version}/MicBoost-#{version}.zip"
  name "MicBoost"
  desc "Menu bar microphone booster with EQ and peak limiter"
  homepage "https://www.vitormach.dev/micboost/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on cask: "blackhole-2ch"
  depends_on macos: :sonoma

  app "MicBoost.app"

  uninstall quit: "io.github.vittau.MicBoost"

  zap trash: "~/Library/Preferences/io.github.vittau.MicBoost.plist"

  caveats <<~EOS
    MicBoost is not notarized. On first launch, and after each upgrade, macOS
    blocks it: open System Settings > Privacy & Security and click "Open Anyway".

    BlackHole 2ch is installed as a dependency and is not removed when MicBoost
    is uninstalled (other apps may use it).
  EOS
end
