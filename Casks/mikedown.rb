cask "mikedown" do
  version "0.19.1"
  sha256 "a909cab50a99644f54d69d3fc6b7e920885e876d2f1e20d3400d5f2bb86e6fbf"

  url "https://github.com/MichaelZuo-AI/Mikedown/releases/download/v#{version}/MikeDown_#{version}_aarch64.dmg"
  name "MikeDown"
  desc "Fast, lightweight desktop Markdown editor and viewer built with Tauri"
  homepage "https://github.com/MichaelZuo-AI/Mikedown"

  depends_on arch: :arm64

  app "MikeDown.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/MikeDown.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.aidreamworks.mikedown",
    "~/Library/Caches/com.aidreamworks.mikedown",
    "~/Library/WebKit/com.aidreamworks.mikedown",
  ]
end
