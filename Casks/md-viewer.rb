cask "md-viewer" do
  version "0.4.0"
  sha256 "d5da089e47c3bfbde993f9604a608c8999c32a31d398acb9b546430cbb563c7d"

  url "https://github.com/MichaelZuo-AI/Markdown-Viewer/releases/download/v#{version}/MD.Viewer_#{version}_aarch64.dmg"
  name "MD Viewer"
  desc "Fast, lightweight desktop Markdown viewer built with Tauri"
  homepage "https://github.com/MichaelZuo-AI/Markdown-Viewer"

  depends_on arch: :arm64

  app "MD Viewer.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/MD Viewer.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.aidreamworks.mdviewer",
    "~/Library/Caches/com.aidreamworks.mdviewer",
    "~/Library/WebKit/com.aidreamworks.mdviewer",
  ]
end
