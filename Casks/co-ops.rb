cask "co-ops" do
  arch arm: "arm64", intel: "x64"
  
  version "1.0.0"
  sha256 arm: "dcfa6a16a1de400b6b8beb92112fd8e9e93cb2dd7952f3e15cd582a8ed1fa91a", intel: "b9bb1994a4933aba8bbfac09f5f846942ceff64a3b641651c5531ad3b700545f"

  url "https://download.co-ops.ai/Co-OPS-#{version}-#{arch}.dmg"
  name "Co-OPS"
  desc "A modern Kubernetes development environment and IDE"
  homepage "https://co-ops.ai"
  
  app "Co-OPS.app"
  
  zap trash: [
    "~/Library/Application Support/Co-OPS",
    "~/Library/Caches/Co-OPS",
    "~/Library/Preferences/Co-OPS.plist",
    "~/Library/Saved Application State/Co-OPS.savedState"
  ]
end