# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
require "formula"
class Tmrestore < Formula
  desc "Restore time-machine backup from command line"
  homepage "https://github.com/dmlane"
  url "https://github.com/dmlane/tmrestore/archive/refs/tags/V1.0.tar.gz"
  sha256 "c8377773702b3928b428b5942f4e65428d1a00de95d895efe61bb8eef6c88408"
  license "MIT"

  depends_on "bash" 

  def install
  	inreplace "tmrestore.sh",/HB_ETC/,"#{etc}"
    bin.install "tmrestore.sh"
  end

  test do
    system "#{bin}/tmrestore --version"
  end
end
