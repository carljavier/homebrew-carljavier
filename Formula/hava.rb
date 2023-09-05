# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hava < Formula
  desc "hava is a Go CLI tool to interact with app.hava.io platform."
  homepage "https://github.com/carljavier/hava"
  version "0.0.23-beta"
  license "Apache-2.0"
  depends_on :macos

  on_macos do
    url "https://github.com/carljavier/hava/releases/download/0.0.23-beta/hava_Darwin_all.tar.gz"
    sha256 "f2e7d5c4c2b15bfcd811454efd24224e2a5c5786b541a40882bcc34822a2de44"

    def install
      bin.install "hava"
    end
  end
end
