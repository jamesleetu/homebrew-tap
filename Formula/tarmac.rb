class Tarmac < Formula
  desc "A plugin-based terminal dashboard and monitoring tool"
  homepage "https://github.com/jamesleetu/tarmac"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jamesleetu/tarmac/releases/download/v0.1.0/tarmac-macos-arm64"
      sha256 "bb5c3574ecae95f221cc26355e46bf3a6ecada333e367fd70e8b486ad7c47f9b"

      def install
        bin.install "tarmac-macos-arm64" => "tarmac"
      end
    else
      url "https://github.com/jamesleetu/tarmac/releases/download/v0.1.0/tarmac-macos-amd64"
      sha256 "358674b9a35b7a031412f51543e2c5932ffbcae46ca8f80b69bda7c7851cebaa"

      def install
        bin.install "tarmac-macos-amd64" => "tarmac"
      end
    end
  end

  on_linux do
    url "https://github.com/jamesleetu/tarmac/releases/download/v0.1.0/tarmac-linux-amd64"
    sha256 "f7bbff391db22daf79477c88ba9b8f8514ef2c1c687214d41256988f882a8cf7"

    def install
      bin.install "tarmac-linux-amd64" => "tarmac"
    end
  end

  test do
    assert_match "tarmac", shell_output("#{bin}/tarmac --version")
  end
end
