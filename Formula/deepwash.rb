class Deepwash < Formula
  desc "A Command Line Interface to clean your machine (docker...)"
  homepage "https://github.com/SoluceTechnologies/deepwash"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SoluceTechnologies/deepwash/releases/download/1.3.0/deepwash-1.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "77b152b5668a8a91fd47f036342a168e29899ddf0d90435036860a25355e9f14"
    end
    on_intel do
      url "https://github.com/SoluceTechnologies/deepwash/releases/download/1.3.0/deepwash-1.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "583aa0a7e32fe014b2e456365b4b93931c4f6ec3610d87b14204d693baad489d"
    end
  end

  def install
    bin.install "deepwash"
  end

  test do
    system "#{bin}/deepwash", "--version"
  end
end
