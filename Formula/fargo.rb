# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fargo < Formula
  desc "fargo is a CLI interface to Farcaster written in Go."
  homepage "https://github.com/vrypan/fargo"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/vrypan/fargo/releases/download/0.2.4/fargo_Darwin_x86_64.tar.gz",
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
        ]
      sha256 "edc7a3998ae1cfd35921620fb7cd79b2a17f1e8ce5e153e1535e3b73fe393bf2"

      def install
        bin.install "fargo"
      end
    end
    on_arm do
      url "https://github.com/vrypan/fargo/releases/download/0.2.4/fargo_Darwin_arm64.tar.gz",
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
        ]
      sha256 "5789201aa7aae5709f29f24c184f8968b39dd91fccbe73fc35c08b337b99202e"

      def install
        bin.install "fargo"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vrypan/fargo/releases/download/0.2.4/fargo_Linux_x86_64.tar.gz",
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
          ]
        sha256 "9936af7c27b5da557d37ce1f109b5e39f34613aa0c320f2e109d6ff3665dc4f9"

        def install
          bin.install "fargo"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vrypan/fargo/releases/download/0.2.4/fargo_Linux_arm64.tar.gz",
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
          ]
        sha256 "768778ad7d043371138f47baae8c2a2f2452c174934a64ff007ddcdb632bb630"

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
