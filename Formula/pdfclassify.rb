class Pdfclassify < Formula
  desc "Awesome CLI tool"
  homepage "https://github.com/dmlane/pdfclassify"
  url "https://github.com/dmlane/pdfclassify/releases/download/v1.0.19/pdfclassify-1.0.19.pyz"
  sha256 "9083e261065918bf7d463eb7ad73c2f33d2a8b5b51c3d759b8e5a560b7cd3adb"
  license "MIT"

  depends_on "python@3.12"

  def install
    bin.install "pdfclassify-#{version}.pyz" => "pdfclassify"
  end
end
