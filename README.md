# homebrew-cachelens

Homebrew Cask tap for [CacheLens](https://getcachelens.pages.dev/), a local,
explainable disk auditor for AI developer tool caches on macOS (Cursor, Claude
Code, Codex, Ollama, LM Studio, Hugging Face, Continue, Cline, Xcode).

## Install

```bash
brew tap ggxx39/cachelens
brew install --cask cachelens
```

or in one line:

```bash
brew install --cask ggxx39/cachelens/cachelens
```

## What this installs

A notarized, signed `CacheLens.app` DMG published on the public
[cachelens-releases](https://github.com/ggxx39/cachelens-releases) repo. The
app's source stays private; release binaries are notarized by Apple and
checksummed (SHA-256) on every release.

Requires macOS 14 (Sonoma) or later.

## Safety

CacheLens scans and classifies locally — no path or filename telemetry.
Cleanup moves items to Trash by default; nothing is permanently deleted
without going through Trash first. See the app's Trust/Rules tab or
<https://getcachelens.pages.dev/safety/> for the full safety boundaries.
