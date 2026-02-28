cask "md-viewer" do
  version "0.1.0"
  sha256 "125efd6453663380acf934a2b49d56a4cb574dc1092228ec87c546b643740860"

  url "https://github.com/MichaelZuo-AI/Markdown-Viewer/releases/download/v#{version}/MD.Viewer_#{version}_aarch64.dmg"
  name "MD Viewer"
  desc "Fast, lightweight desktop Markdown viewer built with Tauri"
  homepage "https://github.com/MichaelZuo-AI/Markdown-Viewer"

  depends_on arch: :arm64

  app "MD Viewer.app"

  zap trash: [
    "~/Library/Application Support/com.aidreamworks.mdviewer",
    "~/Library/Caches/com.aidreamworks.mdviewer",
    "~/Library/WebKit/com.aidreamworks.mdviewer",
  ]
end
