class NoncepadSolpipe < Formula
  desc "Solpipe and Safejar Command Line Utilities"
  homepage "https://solpipe.io"
  version "0.4.940"
  license "PRIVATE"


  on_macos do
    on_intel do
      url "https://noncepad.com/dev/nightly/macos/intel/solpipe.tar.gz"
      sha256 "7433bd741961316845103043bd987b8210807db03afbdebaadf726dd26efaa3b"
    end
    on_arm do
      url "https://noncepad.com/dev/nightly/macos/arm/solpipe.tar.gz"
      sha256 "77685e1112789aa7b304f9c27094ea221d7038e990935764efa1fa9e34eced6b"
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

