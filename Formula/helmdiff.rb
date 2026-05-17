class Helmdiff < Formula
  desc "Diff two Helm chart versions before touching your cluster"
  homepage "https://github.com/jerphil/helmdiff"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jerphil/helmdiff/releases/download/v#{version}/helmdiff_Darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER_DARWIN_ARM64"
    end
    on_intel do
      url "https://github.com/jerphil/helmdiff/releases/download/v#{version}/helmdiff_Darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER_DARWIN_AMD64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jerphil/helmdiff/releases/download/v#{version}/helmdiff_Linux_arm64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARM64"
    end
    on_intel do
      url "https://github.com/jerphil/helmdiff/releases/download/v#{version}/helmdiff_Linux_amd64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_AMD64"
    end
  end

  def install
    bin.install "helmdiff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/helmdiff --version")
  end
end
