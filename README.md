# homebrew-tap

The Homebrew tap for my macOS apps:

- **[Home Cellar](https://github.com/juancasanueva/SWIFTUI_cellar)** — a native macOS GUI for
  Homebrew. Cask token `home-cellar`, app bundle `Home-Cellar.app`.
- **[System Monitor](https://github.com/juancasanueva/SWIFTUI_system_monitor)** — a lightweight CPU,
  memory, disk and network monitor for the macOS menu bar. Cask token `system-monitor`, app bundle
  `System-Monitor.app`.
- **[Burnbar](https://github.com/juancasanueva/SWIFTUI_burnbar)** — a menu bar burn rate for Claude
  and Codex plan limits. Cask token `burnbar`, app bundle `Burnbar.app`.
- **[Matchday](https://github.com/juancasanueva/SWIFTUI_matchday)** — a menu bar app to follow soccer
  teams: live scores, fixtures and standings. Cask token `matchday`, app bundle `Matchday.app`.
- **[PeriBattery](https://github.com/juancasanueva/SWIFTUI_battery)** — menu bar battery levels for
  Logitech keyboards and mice. Cask token `peribattery`, app bundle `PeriBattery.app`.
- **[Attic](https://github.com/juancasanueva/SWIFTUI_Attic)** — disk space analyzer with sunburst and
  treemap views. Cask token `attic`, app bundle `Attic.app`.
- **[Terrazzo](https://github.com/juancasanueva/SWIFTUI_Terrazzo)** — tiling window manager with numbered
  workspaces. Cask token `terrazzo`, app bundle `Terrazzo.app`.
- **[YouTubeDownloader](https://github.com/juancasanueva/SWIFTUI_youtube_downloader)** — a menu bar app that
  downloads YouTube videos with yt-dlp. Cask token `youtube-downloader`, app bundle `YouTubeDownloader.app`.

One tap, one trust grant, one `brew upgrade` for all of them.

## Install

```sh
brew trust juancasanueva/tap
brew tap juancasanueva/tap
brew install --cask home-cellar
```

```sh
brew trust juancasanueva/tap
brew tap juancasanueva/tap
brew install --cask system-monitor
```

```sh
brew trust juancasanueva/tap
brew tap juancasanueva/tap
brew install --cask burnbar
```

```sh
brew trust juancasanueva/tap
brew tap juancasanueva/tap
brew install --cask matchday
```

```sh
brew trust juancasanueva/tap
brew tap juancasanueva/tap
brew install --cask peribattery
```

Each installs the same notarized, stapled build the project's releases page serves —
[Home Cellar](https://github.com/juancasanueva/SWIFTUI_cellar/releases),
[System Monitor](https://github.com/juancasanueva/SWIFTUI_system_monitor/releases),
[Burnbar](https://github.com/juancasanueva/SWIFTUI_burnbar/releases),
[Matchday](https://github.com/juancasanueva/SWIFTUI_matchday/releases),
[PeriBattery](https://github.com/juancasanueva/SWIFTUI_battery/releases). The bundle is
named identically in both channels.

Homebrew 6 refuses to load, and since 6.0.22 even to tap, a non-official tap that carries a cask
until the tap is trusted, which is what the first line does. It grants nothing beyond this tap, and
you can undo it with `brew untrust juancasanueva/tap`.

If another tap ever claims one of these tokens, the fully-qualified form is unambiguous — and naming
the tap on the command line is itself the grant, so it needs no `brew trust` at all:

```sh
brew install --cask juancasanueva/tap/home-cellar
brew install --cask juancasanueva/tap/system-monitor
brew install --cask juancasanueva/tap/burnbar
brew install --cask juancasanueva/tap/matchday
brew install --cask juancasanueva/tap/peribattery
```

### Already have the app in `/Applications`?

Homebrew refuses to overwrite an app it did not place, so a copy installed from the zip stops the
plain install with `It seems there is already an App at '/Applications/Home-Cellar.app'`. Let brew
adopt the existing copy instead:

```sh
brew install --cask --adopt home-cellar
brew install --cask --adopt system-monitor
brew install --cask --adopt burnbar
brew install --cask --adopt matchday
brew install --cask --adopt peribattery
```

Adoption keeps the bundle and its data where they are and records it as brew-managed. Because all five
casks declare `auto_updates`, brew does not compare versions before adopting — whatever Sparkle has
updated the copy to is the copy it takes over.

## Moved from `juancasanueva/cellar` and `juancasanueva/system-monitor`

Both apps used to live in a tap of their own. Those two taps are now migration pointers: their cask
files are gone and a `tap_migrations.json` at each root sends the token here. If you already have
either app installed from the old tap, three commands finish the move:

```sh
brew trust juancasanueva/tap
brew tap juancasanueva/tap
brew upgrade
```

The trust grant and the tap have to come first. `brew upgrade` follows a migration into a tap you
already have, but it will not add a tap for you, and Homebrew will not load a cask from an untrusted
third-party tap — so a bare `brew upgrade` without those two lines simply does nothing.

Once `brew info --cask <token>` reports `From: https://github.com/juancasanueva/homebrew-tap/...`, the old tap has no further job:

```sh
brew untap juancasanueva/cellar
brew untap juancasanueva/system-monitor
```

Untapping does **not** uninstall anything, and nothing about the installed app changes — the
migration rebinds which tap owns the token, not the bundle on disk.

## Requirements

- macOS 15 (Sequoia) or later — Home Cellar requires macOS 26 (Tahoe) or later
- Apple Silicon (`arm64`)

## Updates

All five apps update themselves with [Sparkle](https://sparkle-project.org) from an EdDSA-signed
appcast, so every cask declares `auto_updates true`. Homebrew will not report a self-updated copy as
outdated and will not reinstall over it. `brew upgrade` and the apps' own updaters do not fight.

## Uninstall

```sh
brew uninstall --cask home-cellar
brew uninstall --cask system-monitor
brew uninstall --cask burnbar
brew uninstall --cask matchday
brew uninstall --cask peribattery
```

To remove an app's caches, local data and preferences as well:

```sh
brew uninstall --cask --zap home-cellar
brew uninstall --cask --zap system-monitor
brew uninstall --cask --zap burnbar
brew uninstall --cask --zap matchday
brew uninstall --cask --zap peribattery
```

**A zap cannot remove Keychain items.** Homebrew's uninstall has no Keychain facility, so these
generic-password items survive it, and they are the only things that do:

- `com.juancasanueva.cellar.nvd-api-key`
- `com.juancasanueva.cellar.github-pat`
- `com.juancasanueva.system-monitor.nvd-api-key`
- `com.juancasanueva.system-monitor.github-pat`

Each exists only if you supplied that optional credential. Delete them in **Keychain Access** if you
want them gone.

Untapping or deleting this tap does **not** uninstall anything. An installed copy keeps working and
keeps updating itself through Sparkle; it simply stops being managed by `brew`.

## How this tap stays current

`.github/workflows/bump.yml` reads each app repository's latest published release four times a day,
downloads the published asset, computes its checksum from those bytes, and commits the two-line bump
only after `brew style` and `brew audit --cask --online --strict` both pass. It makes no commit when
a cask already declares the published version, so at most one commit exists per release. The app
repositories send nothing to this one and hold no credential for it.

## Licence

MIT, the same licence as the apps. A cask is a build recipe, not the application.
