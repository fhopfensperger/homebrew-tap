# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitRemoteCleanup < Formula
  desc "Get and delete no longer needed release branches from a remote repository."
  homepage "https://fhopfensperger.github.io"
  version "0.3.7"
  license "Apache 2.0"

  depends_on "go" => :optional
  depends_on "git" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fhopfensperger/git-remote-cleanup/releases/download/v0.3.7/git-remote-cleanup_darwin_amd64.tar.gz"
      sha256 "12cd8fa34ad6657b4d39fa7d5bd5d5c055968a0536bd86121ed59037e5ec18b9"

      def install
        bin.install "git-remote-cleanup"
        bash_completion.install "completions/git-remote-cleanup.bash" => "git-remote-cleanup"
        zsh_completion.install "completions/git-remote-cleanup.zsh" => "_git-remote-cleanup"
        fish_completion.install "completions/git-remote-cleanup.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fhopfensperger/git-remote-cleanup/releases/download/v0.3.7/git-remote-cleanup_darwin_arm64.tar.gz"
      sha256 "4d9cce404a9706cfcbdd6889c2af70aab772ee5f7f5144a6525fe1cac83692b0"

      def install
        bin.install "git-remote-cleanup"
        bash_completion.install "completions/git-remote-cleanup.bash" => "git-remote-cleanup"
        zsh_completion.install "completions/git-remote-cleanup.zsh" => "_git-remote-cleanup"
        fish_completion.install "completions/git-remote-cleanup.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/fhopfensperger/git-remote-cleanup/releases/download/v0.3.7/git-remote-cleanup_linux_armv6.tar.gz"
      sha256 "086b88de11ec49ee7c06d003b0235411880003786f381743e9da392a1a0068ba"

      def install
        bin.install "git-remote-cleanup"
        bash_completion.install "completions/git-remote-cleanup.bash" => "git-remote-cleanup"
        zsh_completion.install "completions/git-remote-cleanup.zsh" => "_git-remote-cleanup"
        fish_completion.install "completions/git-remote-cleanup.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fhopfensperger/git-remote-cleanup/releases/download/v0.3.7/git-remote-cleanup_linux_arm64.tar.gz"
      sha256 "4ce545208740a337fd6dc03b04792f4c8630988241134a213201cfe32c31aa93"

      def install
        bin.install "git-remote-cleanup"
        bash_completion.install "completions/git-remote-cleanup.bash" => "git-remote-cleanup"
        zsh_completion.install "completions/git-remote-cleanup.zsh" => "_git-remote-cleanup"
        fish_completion.install "completions/git-remote-cleanup.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/fhopfensperger/git-remote-cleanup/releases/download/v0.3.7/git-remote-cleanup_linux_amd64.tar.gz"
      sha256 "658ac3bae798e1cad529abfecae8d008a61cac4d2f7489384140b4f35366f678"

      def install
        bin.install "git-remote-cleanup"
        bash_completion.install "completions/git-remote-cleanup.bash" => "git-remote-cleanup"
        zsh_completion.install "completions/git-remote-cleanup.zsh" => "_git-remote-cleanup"
        fish_completion.install "completions/git-remote-cleanup.fish"
      end
    end
  end

  test do
    system "#{bin}/git-remote-cleanup -v"
  end
end
