class Tmrestore < Formula
  desc "Restore time-machine backup from command-line"
  homepage "https://github.com/dmlane"
  url "https://github.com/dmlane/tmrestore/archive/refs/tags/V1.0.2.tar.gz"
  sha256 "dcfbfaf815fd6cc2717f6fd60d5d47067ce76f12ecacf39aa675e0ee75a8ec94"
  license "MIT"

  depends_on "bash"

  def install
    inreplace "tmrestore", "HB_ETC", @etc.to_s
    bin.install "tmrestore"
  end

  test do
    system "#{bin}/tmrestore", "--version"
  end
end
