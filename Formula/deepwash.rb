class Deepwash < Formula
  desc "A Command Line Interface to clean your machine (docker...)"
  homepage "https://github.com/SoluceTechnologies/deepwash"
  version "1.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SoluceTechnologies/deepwash/releases/download/1.3.1/deepwash-1.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "4a696e86ea3d1642ca526450a0e758198a2b2a1fe44277fcb6188edec8e4b31f"
    end
    on_intel do
      url "https://github.com/SoluceTechnologies/deepwash/releases/download/1.3.1/deepwash-1.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "f4677090f4d95ce3d2e2dfea0fb5580517288e42749a8033d4b4a5cc1c36da02"
    end
  end

  def install
    bin.install "deepwash"
  end

  test do
    system "#{bin}/deepwash", "--version"
  end
end
