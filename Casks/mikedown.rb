cask "mikedown" do
  version "0.8.0"
  sha256 "494a8bbcc03ac96efde4854ef31add67a7d529e7ebbc197f4cc99420c881c003"

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
