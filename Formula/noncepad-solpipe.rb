class NoncepadSolpipe < Formula
  desc "Solpipe and Safejar command line utilities"
  homepage "https://solpipe.io"
  version "0.4.0"
  license "PRIVATE"


  on_macos do
    on_intel do
      url "https://noncepad.com/dev/nightly/macos/intel/solpipe.tar.gz"
      sha256 "2fc9010c1d3d3888c0867544da669ca922002470e8b7b054323988a3366311d1"
    end
    on_arm do
      url "https://noncepad.com/dev/nightly/macos/arm/solpipe.tar.gz"
      sha256 "e22ed19c69d6a27b58294fa38f005a5f42f8c6b20220e15214543b7dfe896331"
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

