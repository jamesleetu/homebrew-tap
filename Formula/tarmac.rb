class Tarmac < Formula
  desc "A plugin-based terminal dashboard and monitoring tool"
  homepage "https://github.com/jamesleetu/tarmac"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jamesleetu/tarmac/releases/download/v0.1.0/tarmac-macos-arm64"
      sha256 ""

      def install
        bin.install "tarmac-macos-arm64" => "tarmac"
      end
    else
      url "https://github.com/jamesleetu/tarmac/releases/download/v0.1.0/tarmac-macos-amd64"
      sha256 ""

      def install
        bin.install "tarmac-macos-amd64" => "tarmac"
      end
    end
  end

  on_linux do
    url "https://github.com/jamesleetu/tarmac/releases/download/v0.1.0/tarmac-linux-amd64"
    sha256 ""

    def install
      bin.install "tarmac-linux-amd64" => "tarmac"
    end
  end

  test do
    assert_match "tarmac", shell_output("#{bin}/tarmac --version")
  end
end
