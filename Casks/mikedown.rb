cask "mikedown" do
  version "0.9.1"
  sha256 "9a9535a413b2cbff4a1d7312edbf6be66c822cbf8fadd15ac91757f207b24676"

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
