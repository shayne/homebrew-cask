cask "portalbox" do
  version "0.1.3"
  sha256 "9a8354dc91df099fa5b685060cb0d5b2e64a128e05e54d57d30923d4b2a081f8"

  url "https://releases.portalbox.friendlyventures.org/#{version}/portalbox-macos-universal.zip",
      verified: "releases.portalbox.friendlyventures.org/"
  name "PortalBox"
  desc "Share a region of your screen in video calls"
  homepage "https://portalboxapp.com/"

  livecheck do
    url "https://releases.portalbox.friendlyventures.org/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "PortalBox.app"

  zap trash: [
    "~/Library/Application Support/org.friendlyventures.PortalBox",
    "~/Library/Caches/org.friendlyventures.PortalBox",
    "~/Library/HTTPStorages/org.friendlyventures.PortalBox",
    "~/Library/Preferences/org.friendlyventures.PortalBox.plist",
    "~/Library/Saved Application State/org.friendlyventures.PortalBox.savedState",
    "~/Library/WebKit/org.friendlyventures.PortalBox",
  ]
end
