class NoncepadSolpipe < Formula
  desc "Solpipe and Safejar command line utilities"
  homepage "https://solpipe.io"
  version "0.4.926"
  license "PRIVATE"


  on_macos do
    on_intel do
      url "https://noncepad.com/dev/nightly/macos/intel/solpipe.tar.gz"
      sha256 "6e7d236434bc7692196240b7e8016f8ccbdff3b9fffcfbbec324e97d7cf5aa59"
    end
    on_arm do
      url "https://noncepad.com/dev/nightly/macos/arm/solpipe.tar.gz"
      sha256 "879109b9a02ea30b36477015a2441e32159e9bea610870eafa9b9347ced9ef65"
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

