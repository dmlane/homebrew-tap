class Tmrestore < Formula
  desc "Restore time-machine backup from command-line"
  homepage "https://github.com/dmlane"
  url "https://github.com/dmlane/tmrestore/archive/refs/tags/V1.0.4.tar.gz"
  sha256 "d200c353e59d58d9f4e0b1cf78fafeea64cc6b7f60e9958fa408727729f9eb7a"
  license "MIT"

  depends_on "bash"

  def install
    bin.install "tmrestore"
	inreplace "common.env", "__VERSION__", version.to_s
	prefix.install "common.env"
  end

  test do
    system "#{bin}/tmrestore", "--version"
  end
end
