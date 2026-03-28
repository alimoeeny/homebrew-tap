class ClaudeProfiles < Formula
  desc "Manage multiple Claude Code profiles"
  homepage "https://github.com/alimoeeny/claude-profiles"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alimoeeny/claude-profiles/releases/download/v#{version}/claude-profiles_Darwin_arm64.tar.gz"
      sha256 "1e8dba78db2d93f28a96f29b7a090e22b23d081fd12808cea228477060011976"
    elsif Hardware::CPU.intel?
      url "https://github.com/alimoeeny/claude-profiles/releases/download/v#{version}/claude-profiles_Darwin_amd64.tar.gz"
      sha256 "20120dcdbc00937670b77ff0ed96fd136b70823828e09983b54fca3e75af4b47"
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
