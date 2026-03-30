class ClaudeProfiles < Formula
  desc "Manage multiple Claude Code profiles"
  homepage "https://github.com/alimoeeny/claude-profiles"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alimoeeny/claude-profiles/releases/download/v#{version}/claude-profiles_Darwin_arm64.tar.gz"
      sha256 "04f60abf19f50057667e9d7c3205aa86b2efa25d0a166fd7dabbcccc7910033c"
    elsif Hardware::CPU.intel?
      url "https://github.com/alimoeeny/claude-profiles/releases/download/v#{version}/claude-profiles_Darwin_amd64.tar.gz"
      sha256 "e3869cb65940bd41e7865c3c383a464a7c82cba4f5db9333b47093eba622911f"
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
