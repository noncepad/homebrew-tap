class NoncepadSolpipe < Formula
  desc "Solpipe and Safejar Command Line Utilities"
  homepage "https://solpipe.io"
  version "0.4.932"
  license "PRIVATE"


  on_macos do
    on_intel do
      url "https://noncepad.com/dev/nightly/macos/intel/solpipe.tar.gz"
      sha256 "4decc0120a84da84a786a5305a5ae2fee3acb25bc677451bd5f2784f0d468f6b"
    end
    on_arm do
      url "https://noncepad.com/dev/nightly/macos/arm/solpipe.tar.gz"
      sha256 "a3a74233b01de1e68192324746d9047aa827aecd78cc86bbd59405022a295207"
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

