cask "cachelens" do
  version "0.3.0"
  sha256 "ac4439ac20e087d22c758714f0201f8eb377ffaf9af4d7d9577ef09a0d28cc7a"

  url "https://github.com/ggxx39/cachelens/releases/download/v#{version}/CacheLens.dmg"
  name "CacheLens"
  desc "Open-source AI developer tool state and cache inspector"
  homepage "https://getcachelens.pages.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false
  depends_on macos: :sonoma

  app "CacheLens.app"
  binary "#{appdir}/CacheLens.app/Contents/MacOS/cachelens-cli", target: "cachelens"

  zap trash: [
    "~/Library/Application Support/CacheLens",
    "~/Library/Caches/com.ggxx39.cachelens",
  ]
end
