# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitReleaser < Formula
  desc "Command line tool to create release branches and tags"
  homepage "https://fhopfensperger.github.io"
  version "0.3.9"
  license "Apache 2.0"

  depends_on "go" => :optional
  depends_on "git" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fhopfensperger/git-releaser/releases/download/v0.3.9/git-releaser_darwin_arm64.tar.gz"
      sha256 "1b51e12477c54347710489f82e5ec90e9eee28845831f443fa14c4bd439f5333"

      def install
        bin.install "git-releaser"
        bash_completion.install "completions/git-releaser.bash" => "git-releaser"
        zsh_completion.install "completions/git-releaser.zsh" => "_git-releaser"
        fish_completion.install "completions/git-releaser.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/fhopfensperger/git-releaser/releases/download/v0.3.9/git-releaser_darwin_amd64.tar.gz"
      sha256 "fb6194edc13ccb15c2846e64dfddd9252f695f8937728ee5a632bf45aba3f837"

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
      url "https://github.com/fhopfensperger/git-releaser/releases/download/v0.3.9/git-releaser_linux_armv6.tar.gz"
      sha256 "688c87060ceb987838ff26a940ebae1cdc511934d1f7a2878c324aa91413408a"

      def install
        bin.install "git-releaser"
        bash_completion.install "completions/git-releaser.bash" => "git-releaser"
        zsh_completion.install "completions/git-releaser.zsh" => "_git-releaser"
        fish_completion.install "completions/git-releaser.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/fhopfensperger/git-releaser/releases/download/v0.3.9/git-releaser_linux_amd64.tar.gz"
      sha256 "95903f8ed902c637a27e6549fc69f649ac8f38b51df13b617883ccc045725898"

      def install
        bin.install "git-releaser"
        bash_completion.install "completions/git-releaser.bash" => "git-releaser"
        zsh_completion.install "completions/git-releaser.zsh" => "_git-releaser"
        fish_completion.install "completions/git-releaser.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fhopfensperger/git-releaser/releases/download/v0.3.9/git-releaser_linux_arm64.tar.gz"
      sha256 "6f8eae971eca4e4618a4040984d2d547714535ee519955b6dd6cb6a5df1edf87"

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
