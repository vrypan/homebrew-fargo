# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fargo < Formula
  desc "fargo is a CLI interface to Farcaster written in Go."
  homepage "https://github.com/vrypan/fargo"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/vrypan/fargo/releases/download/0.1.6/fargo_Darwin_x86_64.tar.gz",
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
        ]
      sha256 "3737bcb93f91480ec323985f0ae3e0115689aa14d7335f45bba6c5d92914d3a1"

      def install
        bin.install "fargo"
      end
    end
    on_arm do
      url "https://github.com/vrypan/fargo/releases/download/0.1.6/fargo_Darwin_arm64.tar.gz",
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
        ]
      sha256 "158202850b3c03bc8d01134433a87b34a26e3788614233d168eec80039008b9a"

      def install
        bin.install "fargo"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vrypan/fargo/releases/download/0.1.6/fargo_Linux_x86_64.tar.gz",
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
          ]
        sha256 "3c34fe7d96741be3edbb773a37df3cbf7f546468dd38e98e9127470e406a4606"

        def install
          bin.install "fargo"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/vrypan/fargo/releases/download/0.1.6/fargo_Linux_arm64.tar.gz",
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
          ]
        sha256 "51d43996e72567d195c36bdcc13ffcfc60403e9faaad20f578284d8eebb18f31"

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
