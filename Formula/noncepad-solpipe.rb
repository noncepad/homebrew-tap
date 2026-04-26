class NoncepadSolpipe < Formula
  desc "Solpipe and Safejar command line utilities"
  homepage "https://solpipe.io"
  version "0.4.0"
  license "PRIVATE"


  if Hardware::CPU.intel?
    url "https://noncepad.com/dev/nightly/macos/intel/solpipe.tar.gz"
    sha256 "ee25fad175248931cd5ef1e1db507e68247956306974b2e0ab900ae8fd321512"
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

