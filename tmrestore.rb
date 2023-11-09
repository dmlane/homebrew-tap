# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Tmrestore < Formula
  desc "Restore time-machine backup from command line"
  homepage "https://github.com/dmlane"
  url "https://github.com/dmlane/tmrestore/archive/refs/tags/V1.0.tar.gz"
  sha256 "c8377773702b3928b428b5942f4e65428d1a00de95d895efe61bb8eef6c88408"
  license "MIT"

  depends_on "bash" 

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    bin.install "tmrestore.sh"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
  end

  #test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test tmrestore`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
  #  system "false"
  #end
end
