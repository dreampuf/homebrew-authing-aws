# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AuthingAws < Formula
  desc "Fetching your AWS Access token via Authing"
  homepage "https://github.com/dreampuf/authing-aws"
  version "0.0.2"
  license "GPL-3.0 license"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dreampuf/authing-aws/releases/download/v0.0.2/authing-aws_0.0.2_Darwin_arm64.tar.gz"
      sha256 "759f4e57c0d313854a3bf5c29c6a62cab3eca1f9dda384bf21f0baa12e13582d"

      def install
        bin.install "authing-aws"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/dreampuf/authing-aws/releases/download/v0.0.2/authing-aws_0.0.2_Darwin_x86_64.tar.gz"
      sha256 "a16a9351eccf97378c477f1a02315a6558d0eaca1a0ba204527d178535cf5c52"

      def install
        bin.install "authing-aws"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/dreampuf/authing-aws/releases/download/v0.0.2/authing-aws_0.0.2_Linux_x86_64.tar.gz"
      sha256 "78f54d63a65559266fbd9f18ed4fcf400202b9f3359050afbe872cf939db0cdb"

      def install
        bin.install "authing-aws"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dreampuf/authing-aws/releases/download/v0.0.2/authing-aws_0.0.2_Linux_arm64.tar.gz"
      sha256 "dee0a71fde8b693fcc103971e18ffa6136bbdab26e1a147ddde20a3f258854a5"

      def install
        bin.install "authing-aws"
      end
    end
  end

  test do
    system "#{bin}/program", "version"
  end
end
