class Tmrestore < Formula
  desc "Restore time-machine backup from command-line"
  homepage "https://github.com/dmlane"
  url "https://github.com/dmlane/tmrestore/archive/refs/tags/V1.0.3.tar.gz"
  sha256 "1131c12190e2dac937bbc6c4267076d6ec007f3ffd560f03ed7647ff8195ae15"
  license "MIT"

  depends_on "bash"

  def install
    inreplace "tmrestore", "HB_ETC", etc.to_s
    bin.install "tmrestore"
  end

  test do
    system "#{bin}/tmrestore", "--version"
  end
end
