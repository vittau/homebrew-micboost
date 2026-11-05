# Homebrew tap for MicBoost

[MicBoost](https://www.vitormach.dev/micboost/) is a free macOS menu bar app that makes your
microphone louder and clearer in any app.

```sh
brew install --cask vittau/micboost/micboost
```

This also installs [BlackHole 2ch](https://existential.audio/blackhole/), which MicBoost needs; it
asks for your password. MicBoost is not notarized: on first launch, and after each upgrade, open
System Settings → Privacy & Security and click **Open Anyway**.

- Upgrade: `brew upgrade --cask micboost`
- Uninstall: `brew uninstall --cask micboost` (BlackHole stays; remove it with
  `brew uninstall --cask blackhole-2ch` if no other app uses it)

Source, issues and releases: https://github.com/vittau/MicBoost
