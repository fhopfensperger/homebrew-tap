# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitReleaser < Formula
  desc "Command line tool to create release branches and tags"
  homepage "https://fhopfensperger.github.io"
  version "0.2.8"
  license "Apache 2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fhopfensperger/git-releaser/releases/download/v0.2.8/git-releaser_0.2.8_darwin_amd64.tar.gz"
      sha256 "5517ff53479bccc2f6de158ad1ca90ecf003c6daa27af738d14e81051d0eafab"
    end
    if Hardware::CPU.arm?
      url "https://github.com/fhopfensperger/git-releaser/releases/download/v0.2.8/git-releaser_0.2.8_darwin_arm64.tar.gz"
      sha256 "0a57396c4242b2116c84a73082c320a5988764b897ce5523aa660dc5ffb2fa75"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/fhopfensperger/git-releaser/releases/download/v0.2.8/git-releaser_0.2.8_linux_amd64.tar.gz"
      sha256 "51e7776a4821043a9d9c63b4f2967214c4af256ebd2bda2fac59656edb2540bc"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/fhopfensperger/git-releaser/releases/download/v0.2.8/git-releaser_0.2.8_linux_armv6.tar.gz"
      sha256 "f60b24fdbcbac4d919345e30befd8e3f1e770486d24fd777c5669c46faa5c3db"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fhopfensperger/git-releaser/releases/download/v0.2.8/git-releaser_0.2.8_linux_arm64.tar.gz"
      sha256 "f12bdcd22b762e045d6d7cfcc0c422cdcac5a4f3ae5c4b229f2dbf9fd5c9ba97"
    end
  end

  depends_on "go" => :optional
  depends_on "git" => :optional

  def install
    bin.install "git-releaser"
  end

  test do
    system "#{bin}/git-releaser -v"
  end
end
