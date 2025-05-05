class Pdfclassify < Formula
  desc "Awesome CLI tool"
  homepage "https://github.com/dmlane/pdfclassify"
  url "https://github.com/dmlane/pdfclassify/releases/download/v1.0.7/pdfclassify.pyz"
  sha256 "549aac05b1679ca35839e33a2c7540f3bd4405c3c22da959f174f69f05442176"
  license "MIT"

  depends_on "python@3.12"

  def install
    bin.install "pdfclassify-#{version}.pyz" => "pdfclassify"
  end
end
