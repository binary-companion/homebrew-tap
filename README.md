# Binary Companion Homebrew tap

Homebrew casks for apps from Binary Companion.

```bash
brew tap binary-companion/tap
brew install --cask timetug
```

Or in one step: `brew install --cask binary-companion/tap/timetug`.

| Cask | App |
| --- | --- |
| `timetug` | [TimeTug](https://github.com/binary-companion/timetug), a menu bar app that takes over the screen shortly before meetings |

Casks follow stable releases only. Beta builds are never published here; TimeTug
updates itself with Sparkle after install (`auto_updates true`).

## How casks stay current

`.github/workflows/bump.yml` runs every six hours (or on demand), reads the app's
latest stable GitHub release, and opens a PR that updates `version` and `sha256`.
`CI` audits every cask on each PR.

## Adding an app

1. Add `Casks/<name>.rb` (see `timetug.rb`).
2. Add a job to `bump.yml` that calls `scripts/bump-cask.sh <name> <owner/repo>`.
3. Open a PR; CI runs `brew style` and `brew audit`.
