class Tmrestore < Formula
  desc "Restore time-machine backup from command-line"
  homepage "https://github.com/dmlane"
  url "https://github.com/dmlane/tmrestore/archive/refs/tags/V1.0.5.tar.gz"
  sha256 "b318ea3fbb9f42470dd3f6026e314c030a729674cf2026f71f2441eadb48e757"
  license "MIT"

  depends_on "bash"

  def install
	inreplace "tmrestore", /^\..*.\/common.env/, ". #{prefix}/common.env"
    bin.install "tmrestore"
	inreplace "common.env", "__VERSION__", version.to_s
	prefix.install "common.env"
  end

  test do
    system "#{bin}/tmrestore", "--version"
  end
end
