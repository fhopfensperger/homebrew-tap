# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AsyncMessagingClient < Formula
  desc "Sends and receives messages in an asynchronous way to or from different Cloud messaging services."
  homepage "https://fhopfensperger.github.io"
  version "0.2.11"
  license "Apache 2.0"

  depends_on "git" => :optional
  depends_on "go" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fhopfensperger/async-messaging-client/releases/download/v0.2.11/async-messaging-client_darwin_amd64.tar.gz"
      sha256 "3c7cb31e88001e676404ea29a7cdd10b3b1a07f37b06a5a0b57a1f338b23d858"

      def install
        bin.install "async-messaging-client"
        bash_completion.install "completions/async-messaging-client.bash" => "async-messaging-client"
        zsh_completion.install "completions/async-messaging-client.zsh" => "_async-messaging-client"
        fish_completion.install "completions/async-messaging-client.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fhopfensperger/async-messaging-client/releases/download/v0.2.11/async-messaging-client_darwin_arm64.tar.gz"
      sha256 "35132bdb82db1bd261257c41ccda229db8e3ae04862cc478c14eb1ceb83ea8ea"

      def install
        bin.install "async-messaging-client"
        bash_completion.install "completions/async-messaging-client.bash" => "async-messaging-client"
        zsh_completion.install "completions/async-messaging-client.zsh" => "_async-messaging-client"
        fish_completion.install "completions/async-messaging-client.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/fhopfensperger/async-messaging-client/releases/download/v0.2.11/async-messaging-client_linux_armv6.tar.gz"
      sha256 "9dfc307e54b7e08fc10bc159abe02ddf752fa6f9b2e5c1921abf368fa908924d"

      def install
        bin.install "async-messaging-client"
        bash_completion.install "completions/async-messaging-client.bash" => "async-messaging-client"
        zsh_completion.install "completions/async-messaging-client.zsh" => "_async-messaging-client"
        fish_completion.install "completions/async-messaging-client.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/fhopfensperger/async-messaging-client/releases/download/v0.2.11/async-messaging-client_linux_amd64.tar.gz"
      sha256 "0b3d69ccc7200c0627cb626ab003c6df50bfc8f9abcf8f4f52827230c87ea008"

      def install
        bin.install "async-messaging-client"
        bash_completion.install "completions/async-messaging-client.bash" => "async-messaging-client"
        zsh_completion.install "completions/async-messaging-client.zsh" => "_async-messaging-client"
        fish_completion.install "completions/async-messaging-client.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fhopfensperger/async-messaging-client/releases/download/v0.2.11/async-messaging-client_linux_arm64.tar.gz"
      sha256 "e0c7be375b9defc64df67723a98b72b96bd62bb8733c152efc17e0134b229a89"

      def install
        bin.install "async-messaging-client"
        bash_completion.install "completions/async-messaging-client.bash" => "async-messaging-client"
        zsh_completion.install "completions/async-messaging-client.zsh" => "_async-messaging-client"
        fish_completion.install "completions/async-messaging-client.fish"
      end
    end
  end

  test do
    system "#{bin}/async-messaging-client -v"
  end
end
