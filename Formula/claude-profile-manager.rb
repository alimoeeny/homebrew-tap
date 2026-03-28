  class ClaudeProfileManager < Formula
    desc "Manage multiple Claude Code profiles"
    homepage "https://github.com/alimoeeny/claude-profile-manager"
    version "0.2.1"

    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/alimoeeny/claude-profile-manager/releases/download/v#{version}/claude-profile-manager_Darwin_arm64.tar.gz"
        sha256 "eeb343bd76a8e17c0776f8cabecc5c00d573ee65c768dbdcef2e00a56e4d259e"
      elsif Hardware::CPU.intel?
        url "https://github.com/alimoeeny/claude-profile-manager/releases/download/v#{version}/claude-profile-manager_Darwin_amd64.tar.gz"
        sha256 "7ae19e3214052c5221e036f489c4d943a5f3b5386556409134f1c53591a92f0e"
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
