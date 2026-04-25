cask "mikedown" do
  version "0.17.0"
  sha256 "53f8a977c43ce462e4e52d97eadfda91a0feec8ddff7a06fe70622d5a6d03796"

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
