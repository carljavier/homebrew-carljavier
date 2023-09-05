# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hava < Formula
  desc "hava is a Go CLI tool to interact with app.hava.io platform."
  homepage "https://github.com/carljavier/hava"
  version "0.0.18-beta"
  license "Apache-2.0"
  depends_on :macos

  on_macos do
    url "https://github.com/carljavier/hava/releases/download/0.0.18-beta/hava_Darwin_all.tar.gz"
    sha256 "57bd7a75529336dc7f3878d62f77464fef74a2cdc01c8dc0a8bd38d628b4dd85"

    def install
      bin.install "hava"
    end
  end
end
