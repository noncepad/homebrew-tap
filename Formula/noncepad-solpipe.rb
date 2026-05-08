class NoncepadSolpipe < Formula
  desc "Solpipe and Safejar command line utilities"
  homepage "https://solpipe.io"
  version "0.4.908"
  license "PRIVATE"


  on_macos do
    on_intel do
      url "https://noncepad.com/dev/nightly/macos/intel/solpipe.tar.gz"
      sha256 "4d7aebb9bf211bf0efd98cc8af298f4e3faf8ed26cf564f0615e46dae9b92ace"
    end
    on_arm do
      url "https://noncepad.com/dev/nightly/macos/arm/solpipe.tar.gz"
      sha256 "a8b2188c3bc1dfc043cc3b752889e9706a37e6a58eda71d8065e9f805e2ee418"
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

