# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Superpet < Formula
  desc "Simple command-line snippet and environment manager"
  homepage "https://github.com/ramiawar/superpet"
  version "0.5.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ramiawar/superpet/releases/download/v0.5.4/superpet_0.5.4_darwin_arm64.tar.gz"
      sha256 "12264942b815e56ee686c609367cbaab108832fe28c2f855c5228b8054573f67"

      def install
        bin.install Dir['pet']
        zsh_completion.install "misc/completions/zsh/_pet"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ramiawar/superpet/releases/download/v0.5.4/superpet_0.5.4_darwin_amd64.tar.gz"
      sha256 "46bcf07599dc805e18832b709b4cde81af389eeed73e6571f656e228329ccfed"

      def install
        bin.install Dir['pet']
        zsh_completion.install "misc/completions/zsh/_pet"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ramiawar/superpet/releases/download/v0.5.4/superpet_0.5.4_linux_armv6.tar.gz"
      sha256 "17f764e5a797b43fd74c94eab7de6dba7dbd90d561eb3289a10effb8a929b41d"

      def install
        bin.install Dir['pet']
        zsh_completion.install "misc/completions/zsh/_pet"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ramiawar/superpet/releases/download/v0.5.4/superpet_0.5.4_linux_arm64.tar.gz"
      sha256 "aa691dc2800e494374dc66274fd621083af48ff721ac4c8996ee8f8c95f2d3a6"

      def install
        bin.install Dir['pet']
        zsh_completion.install "misc/completions/zsh/_pet"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ramiawar/superpet/releases/download/v0.5.4/superpet_0.5.4_linux_amd64.tar.gz"
      sha256 "834cc156fde779518d72ae1d18623f4802aaf88aac01e9c51e304d5e91681d48"

      def install
        bin.install Dir['pet']
        zsh_completion.install "misc/completions/zsh/_pet"
      end
    end
  end

  depends_on "fzf"

  test do
    system "#{bin}/pet"
  end
end
