# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fargo < Formula
  desc "fargo is a CLI interface to Farcaster written in Go."
  homepage "https://github.com/vrypan/fargo"
  version "0.1.13"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/vrypan/fargo/releases/download/0.1.13/fargo_Darwin_x86_64.tar.gz",
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
        ]
      sha256 "c63227b1a6cf974a878ffac51ee770b32cbb3880dc1fabb9405ddadb14167043"

      def install
        bin.install "fargo"
      end
    end
    on_arm do
      url "https://github.com/vrypan/fargo/releases/download/0.1.13/fargo_Darwin_arm64.tar.gz",
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
        ]
      sha256 "498c50be693834cb86b416d7c7a8c802c9231690eb1c1ae6456a85a6f425db9c"

      def install
        bin.install "fargo"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vrypan/fargo/releases/download/0.1.13/fargo_Linux_x86_64.tar.gz",
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
          ]
        sha256 "8ece967d3298371ef823fce698c05fcd6b2f4809905a5849fe2fb87b0986ed50"

        def install
          bin.install "fargo"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vrypan/fargo/releases/download/0.1.13/fargo_Linux_arm64.tar.gz",
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
          ]
        sha256 "d013c10ce2742fabb886d41c924bc534b4f2be97d78b1e11f3fbf41cc779d8d5"

        def install
          bin.install "fargo"
        end
      end
    end
  end

  def caveats
    <<~EOS
      fargo --help
    EOS
  end

  test do
    system "#{bin}/fargo version"
  end
end
