# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
require "formula"
class Tmrestore < Formula
  desc "Restore time-machine backup from command line"
  homepage "https://github.com/dmlane"
  url "https://github.com/dmlane/tmrestore/archive/refs/tags/V1.0.tar.gz"
  sha256 "c1a6c659b3cd556e591f5f9bf4f18b032b7ca86fe7a2b17ae019ea8623883ffe"
  license "MIT"

  depends_on "bash" 

  def install
  	inreplace "tmrestore",HB_ETC,"#{etc}"
    bin.install "tmrestore"
  end

  test do
    system "#{bin}/tmrestore --version"
  end
end
