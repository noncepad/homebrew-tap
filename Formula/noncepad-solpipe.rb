class NoncepadSolpipe < Formula
  desc "Solpipe and Safejar Command Line Utilities"
  homepage "https://solpipe.io"
  version "0.5.1070"
  license "PRIVATE"


  on_macos do
    on_intel do
      url "https://noncepad.com/dev/nightly/macos/intel/solpipe.tar.gz"
      sha256 "da5e0f6455090a3aaf4b2941e65f77e404831a107c5bf783c633686ae43e926b"
    end
    on_arm do
      url "https://noncepad.com/dev/nightly/macos/arm/solpipe.tar.gz"
      sha256 "03bd73689fa6c674229861a761ea270859a9f16c149e8bc70b2a8092735f204b"
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

