class NoncepadSolpipe < Formula
  desc "Solpipe and Safejar Command Line Utilities"
  homepage "https://solpipe.io"
  version "0.4.930"
  license "PRIVATE"


  on_macos do
    on_intel do
      url "https://noncepad.com/dev/nightly/macos/intel/solpipe.tar.gz"
      sha256 "c9cd9ff16e0e2606d5eab0e93e78796c2abd05d5c00052484931e94df617e145"
    end
    on_arm do
      url "https://noncepad.com/dev/nightly/macos/arm/solpipe.tar.gz"
      sha256 "120d2d94185b0b2d0244ba82ce2ad59ed6a899c883703e7769a44fc6cbc05bac"
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

