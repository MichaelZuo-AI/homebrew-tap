cask "md-viewer" do
  version "0.3.1"
  sha256 "40b9ae45fdc0dfed0a1f75482628b3de15938756175a2d77930c37697b96fe76"

  url "https://github.com/MichaelZuo-AI/Markdown-Viewer/releases/download/v#{version}/MD.Viewer_#{version}_aarch64.dmg"
  name "MD Viewer"
  desc "Fast, lightweight desktop Markdown viewer built with Tauri"
  homepage "https://github.com/MichaelZuo-AI/Markdown-Viewer"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "MD Viewer.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/MD Viewer.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.aidreamworks.mdviewer",
    "~/Library/Caches/com.aidreamworks.mdviewer",
    "~/Library/WebKit/com.aidreamworks.mdviewer",
  ]
end
