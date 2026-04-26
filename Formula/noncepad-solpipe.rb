class NoncepadSolpipe < Formula
  desc "Solpipe and Safejar command line utilities"
  homepage "https://solpipe.io"
  version "0.4.0"
  license "PRIVATE"


  if Hardware::CPU.intel?
    url "https://noncepad.com/dev/nightly/macos/intel/solpipe.tar.gz"
    sha256 "46ffa6aa562efb753907f902add572764ab8efbf921f3decc047c9a482053bbf"
  elsif Hardware::CPU.arm?
    url "https://noncepad.com/dev/nightly/macos/arm/solpipe.tar.gz"
    sha256 "98e007da02919a2bba039148f40d5c91502ffe5d4dd20204c298681793ca2931"
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

