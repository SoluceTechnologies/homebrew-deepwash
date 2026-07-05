class Deepwash < Formula
  desc "A Command Line Interface to clean your machine (docker...)"
  homepage "https://github.com/SoluceTechnologies/deepwash"
  version "1.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SoluceTechnologies/deepwash/releases/download/1.2.1/deepwash-1.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "ff198ff639be28258b79ed1b97fa4b93b406162bb0cd15a4c223c105aefd5266"
    end
    on_intel do
      url "https://github.com/SoluceTechnologies/deepwash/releases/download/1.2.1/deepwash-1.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "8165e68af270f8b3eb56c2eb0c5366eba0326f0da48b4c2bb10965e3651fa200"
    end
  end

  def install
    bin.install "deepwash"
  end

  test do
    system "#{bin}/deepwash", "--version"
  end
end
