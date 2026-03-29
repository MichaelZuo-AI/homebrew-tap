cask "mikedown" do
  version "0.11.0"
  sha256 "43c9da433bd2494758164ec63c22954098273c5aa75eae63eed50b9daeffcf36"

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
