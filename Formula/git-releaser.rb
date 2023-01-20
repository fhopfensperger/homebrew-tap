# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitReleaser < Formula
  desc "Command line tool to create release branches and tags"
  homepage "https://fhopfensperger.github.io"
  version "0.3.7"
  license "Apache 2.0"

  depends_on "go" => :optional
  depends_on "git" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fhopfensperger/git-releaser/releases/download/v0.3.7/git-releaser_darwin_amd64.tar.gz"
      sha256 "5900056059b77cbe3da866d3e08e8a3e70e04d2bffadf6b74fe213f627888386"

      def install
        bin.install "git-releaser"
        bash_completion.install "completions/git-releaser.bash" => "git-releaser"
        zsh_completion.install "completions/git-releaser.zsh" => "_git-releaser"
        fish_completion.install "completions/git-releaser.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fhopfensperger/git-releaser/releases/download/v0.3.7/git-releaser_darwin_arm64.tar.gz"
      sha256 "724febd4707fb133bd7a1291516efabd4d3b804c864fd2d7e6145d2fc8fde48e"

      def install
        bin.install "git-releaser"
        bash_completion.install "completions/git-releaser.bash" => "git-releaser"
        zsh_completion.install "completions/git-releaser.zsh" => "_git-releaser"
        fish_completion.install "completions/git-releaser.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/fhopfensperger/git-releaser/releases/download/v0.3.7/git-releaser_linux_armv6.tar.gz"
      sha256 "9168f4b8587abc1b79c97f0121f5904183fcc771f612a5fe678fb0dca66526a1"

      def install
        bin.install "git-releaser"
        bash_completion.install "completions/git-releaser.bash" => "git-releaser"
        zsh_completion.install "completions/git-releaser.zsh" => "_git-releaser"
        fish_completion.install "completions/git-releaser.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/fhopfensperger/git-releaser/releases/download/v0.3.7/git-releaser_linux_amd64.tar.gz"
      sha256 "c271998c002c2c715c5f23f33965f3a1ee411b58203cfbd68cf9e04d47900e0a"

      def install
        bin.install "git-releaser"
        bash_completion.install "completions/git-releaser.bash" => "git-releaser"
        zsh_completion.install "completions/git-releaser.zsh" => "_git-releaser"
        fish_completion.install "completions/git-releaser.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fhopfensperger/git-releaser/releases/download/v0.3.7/git-releaser_linux_arm64.tar.gz"
      sha256 "54b4c627354be0bf221392ebfcc28d5424b458c976e7fbdb89bf3dc8f785dde8"

      def install
        bin.install "git-releaser"
        bash_completion.install "completions/git-releaser.bash" => "git-releaser"
        zsh_completion.install "completions/git-releaser.zsh" => "_git-releaser"
        fish_completion.install "completions/git-releaser.fish"
      end
    end
  end

  test do
    system "#{bin}/git-releaser -v"
  end
end
