class Pdfclassify < Formula
  desc "Awesome CLI tool"
  homepage "https://github.com/dmlane/pdfclassify"
  url "https://github.com/dmlane/pdfclassify/releases/download/v1.0.18/pdfclassify-1.0.18.pyz"
  sha256 "36fbfddda14b68a90326c0388ace06a53f2910d05dc73b1a5aa67a6096c0ef25"
  license "MIT"

  depends_on "python@3.12"

  def install
    bin.install "pdfclassify-#{version}.pyz" => "pdfclassify"
  end
end
