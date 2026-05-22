class NoncepadSolpipe < Formula
  desc "Solpipe and Safejar Command Line Utilities"
  homepage "https://solpipe.io"
  version "0.4.946"
  license "PRIVATE"


  on_macos do
    on_intel do
      url "https://noncepad.com/dev/nightly/macos/intel/solpipe.tar.gz"
      sha256 "a81189077007a99a4d5703aa3c0883d15127fc8428b41e207b52cd87034267bb"
    end
    on_arm do
      url "https://noncepad.com/dev/nightly/macos/arm/solpipe.tar.gz"
      sha256 "d6ea7ba7b5fbdc72fb3989d64e89594c85cc6df9a2722da10cc4262d1bd60b25"
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

