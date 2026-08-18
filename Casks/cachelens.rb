cask "cachelens" do
  version "0.1.1"
  sha256 "0e1443d1bec205b122d536577b5b4fcec672a64c0b051b591726ffa0627399c9"

  url "https://github.com/ggxx39/cachelens-releases/releases/download/v#{version}/CacheLens.dmg"
  name "CacheLens"
  desc "Explainable local audit for AI developer tool caches (Cursor, Claude Code, Xcode, etc.)"
  homepage "https://getcachelens.pages.dev/"

  auto_updates false
  depends_on macos: :sonoma

  app "CacheLens.app"

  zap trash: [
    "~/Library/Application Support/CacheLens",
    "~/Library/Caches/com.ggxx39.cachelens",
  ]
end
