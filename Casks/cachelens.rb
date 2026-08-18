cask "cachelens" do
  version "0.1.0"
  sha256 "5f96f1f90c740992d53052aef530a5399561796e4bfcfe2bce80ead9e4863d12"

  url "https://github.com/ggxx39/cachelens-releases/releases/download/v#{version}/CacheLens.dmg"
  name "CacheLens"
  desc "Explainable local audit for AI developer tool caches (Cursor, Claude Code, Xcode, etc.)"
  homepage "https://getcachelens.pages.dev/"

  auto_updates false
  depends_on macos: ">= :sonoma"

  app "CacheLens.app"

  zap trash: [
    "~/Library/Application Support/CacheLens",
    "~/Library/Caches/com.ggxx39.cachelens",
  ]
end
