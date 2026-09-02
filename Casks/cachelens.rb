cask "cachelens" do
  version "0.2.1"
  sha256 "2c581ab2de781136980a39df37f4412d3d1a978b87a614042d750c9d1ea4707a"

  url "https://github.com/ggxx39/cachelens-releases/releases/download/v#{version}/CacheLens.dmg"
  name "CacheLens"
  desc "AI developer tool state and cache inspector"
  homepage "https://getcachelens.pages.dev/"

  auto_updates false
  depends_on macos: :sonoma

  app "CacheLens.app"

  zap trash: [
    "~/Library/Application Support/CacheLens",
    "~/Library/Caches/com.ggxx39.cachelens",
  ]
end
