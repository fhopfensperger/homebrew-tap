# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AsyncMessagingClient < Formula
  desc "Sends and receives messages in an asynchronous way to or from different Cloud messaging services."
  homepage "https://fhopfensperger.github.io"
  version "0.2.0"
  license "Apache 2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fhopfensperger/async-messaging-client/releases/download/v0.2.0/async-messaging-client_darwin_amd64.tar.gz"
      sha256 "51e56178ba7ca89e8e24bd9de3239625e47e96243018bf4400239157eec377b1"
    end
    if Hardware::CPU.arm?
      url "https://github.com/fhopfensperger/async-messaging-client/releases/download/v0.2.0/async-messaging-client_darwin_arm64.tar.gz"
      sha256 "d56905368f70ae840a6b053148403ad7506360593a38289898d2bcd1e1dfe79b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/fhopfensperger/async-messaging-client/releases/download/v0.2.0/async-messaging-client_linux_amd64.tar.gz"
      sha256 "b545ef6102e8c8d758a21a2db203ab8d38c5350500d48e6c76fe9d3d93388d94"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/fhopfensperger/async-messaging-client/releases/download/v0.2.0/async-messaging-client_linux_armv6.tar.gz"
      sha256 "e5e87f3a638b7a62b104184d54d3076dc4c95eb074085c4f62336f33c9957d9f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fhopfensperger/async-messaging-client/releases/download/v0.2.0/async-messaging-client_linux_arm64.tar.gz"
      sha256 "019846397bc85644ecaea61bbf28a9d06e82ae743fad7a4fba8b903570ba0dbf"
    end
  end

  depends_on "go" => :optional
  depends_on "git" => :optional

  def install
    bin.install "async-messaging-client"
    bash_completion.install "completions/async-messaging-client.bash" => "async-messaging-client"
    zsh_completion.install "completions/async-messaging-client.zsh" => "_async-messaging-client"
    fish_completion.install "completions/async-messaging-client.fish"
  end

  test do
    system "#{bin}/async-messaging-client -v"
  end
end
