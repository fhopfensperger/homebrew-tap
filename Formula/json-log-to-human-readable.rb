# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class JsonLogToHumanReadable < Formula
  desc "Transforms json log into human readable output"
  homepage "https://fhopfensperger.github.io"
  version "0.2.12"
  license "Apache 2.0"

  depends_on "git" => :optional
  depends_on "go" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fhopfensperger/json-log-to-human-readable/releases/download/v0.2.12/json-log-to-human-readable_0.2.12_darwin_amd64.tar.gz"
      sha256 "888e4e06bf098411b772250a2627590c24cd54af4344e58f9d1790f47b62a40a"

      def install
        bin.install "json-log-to-human-readable"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fhopfensperger/json-log-to-human-readable/releases/download/v0.2.12/json-log-to-human-readable_0.2.12_darwin_arm64.tar.gz"
      sha256 "783b69704c9653bc50d641ee172b50d5798f23d094fe6294949294cc60fac8e2"

      def install
        bin.install "json-log-to-human-readable"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/fhopfensperger/json-log-to-human-readable/releases/download/v0.2.12/json-log-to-human-readable_0.2.12_linux_armv6.tar.gz"
      sha256 "1dba474fa53f152ad6062fa68e347b7724ddc994bc2d156a23b04f33163a1948"

      def install
        bin.install "json-log-to-human-readable"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/fhopfensperger/json-log-to-human-readable/releases/download/v0.2.12/json-log-to-human-readable_0.2.12_linux_amd64.tar.gz"
      sha256 "0d6226e3801ed2ba17d42a5529ab96b77ceef9a09bf9189c0a133b5047c37c4f"

      def install
        bin.install "json-log-to-human-readable"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fhopfensperger/json-log-to-human-readable/releases/download/v0.2.12/json-log-to-human-readable_0.2.12_linux_arm64.tar.gz"
      sha256 "0f97d06465274477dcdd34027d1e6e95c691243bdef0e77deabe454829486a1c"

      def install
        bin.install "json-log-to-human-readable"
      end
    end
  end

  test do
    system "#{bin}/json-log-to-human-readable -v"
  end
end
