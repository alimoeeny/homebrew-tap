class ClaudeProfiles < Formula
  desc "Manage multiple Claude Code profiles"
  homepage "https://github.com/alimoeeny/claude-profiles"
  version "0.4.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alimoeeny/claude-profiles/releases/download/v#{version}/claude-profiles_Darwin_arm64.tar.gz"
      sha256 "0597f4875f0e129220861df2bf6722482e2517bab2d44bfcce9a7d1cecd33e37"
    elsif Hardware::CPU.intel?
      url "https://github.com/alimoeeny/claude-profiles/releases/download/v#{version}/claude-profiles_Darwin_amd64.tar.gz"
      sha256 "ef820e71f02cafdd63a778862768b8cfa004073d4ddd74c67282be14fa34904a"
    end
  end

  license "MIT"

  def install
    bin.install "claude-profiles"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-profiles --version")
  end
end
