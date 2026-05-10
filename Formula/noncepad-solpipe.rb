class NoncepadSolpipe < Formula
  desc "Solpipe and Safejar command line utilities"
  homepage "https://solpipe.io"
  version "0.4.930"
  license "PRIVATE"


  on_macos do
    on_intel do
      url "https://noncepad.com/dev/nightly/macos/intel/solpipe.tar.gz"
      sha256 "027b0bfe1e36397c490f84b7c93842230cbe73c8965b4e679dc923f6f37802fd"
    end
    on_arm do
      url "https://noncepad.com/dev/nightly/macos/arm/solpipe.tar.gz"
      sha256 "d6f8ce9fe5eef83d9edf3e034464756b5584839e5d0b2617a7424237d3d958d7"
    end
  end
    
  def install
    bin.install "solpipe"
    bin.install "safejar"
  end

  test do
    # A simple test to verify installation
    system "#{bin}/solpipe", "version"
    system "#{bin}/safejar", "version"
  end

end

