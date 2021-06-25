# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitReleaser < Formula
  desc "Command line tool to create release branches and tags"
  homepage "https://fhopfensperger.github.io"
  version "0.0.99"
  license "Apache 2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fhopfensperger/git-releaser/releases/download/v0.0.99/git-releaser_darwin_amd64.tar.gz"
      sha256 "382f1d0179343e2056f475e47135d4dd025e54e52ed97198025a28e456d64906"
    end
    if Hardware::CPU.arm?
      url "https://github.com/fhopfensperger/git-releaser/releases/download/v0.0.99/git-releaser_darwin_arm64.tar.gz"
      sha256 "a366f332f9fa50ed6a501932d9fe36cb3a460f728ec36c58e34fc709e718ee01"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/fhopfensperger/git-releaser/releases/download/v0.0.99/git-releaser_linux_amd64.tar.gz"
      sha256 "4e3873d4eeca8743deb10de164de7763fde76c82a5961eb92f98d66fd28ae312"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/fhopfensperger/git-releaser/releases/download/v0.0.99/git-releaser_linux_armv6.tar.gz"
      sha256 "4f4bd09a07eeb0ca5a2dc9ae5bfcf4b390a5f5472ea87a4108948675fd23c6bc"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fhopfensperger/git-releaser/releases/download/v0.0.99/git-releaser_linux_arm64.tar.gz"
      sha256 "5556696eb79aab180b4ffd92c47d7f55e669a739533ff1a977b47579381acb72"
    end
  end

  depends_on "go" => :optional
  depends_on "git" => :optional

  def install
    bin.install "git-releaser"
    bash_completion.install "completions/git-releaser.bash" => "git-releaser"
    zsh_completion.install "completions/git-releaser.zsh" => "_git-releaser"
    fish_completion.install "completions/git-releaser.fish"
  end

  test do
    system "#{bin}/git-releaser -v"
  end
end
