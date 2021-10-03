cask "openrgb" do
  version "0.6,405ff7f"

  if Hardware::CPU.intel?
    sha256 "732b7c53757cf1a54383f93c5705292a7a662ae96671df788d2b817cfaf77e1b"
    url "https://openrgb.org/releases/release_#{version.before_comma}/OpenRGB_#{version.before_comma}_MacOS_Intel_#{version.after_comma}.zip"
  else
    sha256 "fe3035b18aa259e812dc6b11073b9de4f4b2f033b15aff167c788a3e46244b02"
    url "https://openrgb.org/releases/release_#{version.before_comma}/OpenRGB_#{version.before_comma}_MacOS_ARM64_#{version.after_comma}.zip"
  end

  name "OpenRGB"
  desc "Open source RGB lighting control"
  homepage "https://openrgb.org/"

  app "OpenRGB.app"

  zap trash: [
    "~/Library/Saved Application State/com.yourcompany.OpenRGB.savedState",
    "~/.config/OpenRGB",
  ]
end
