class Pdfclassify < Formula
  desc "Awesome CLI tool"
  homepage "https://github.com/dmlane/pdfclassify"
  url "https://github.com/dmlane/pdfclassify/releases/download/v1.0.5/pdfclassify-1.0.5.pyz"
  sha256 "5c8d768b17c29b7800aa14fae8df587dc05a3e467375af1b1d9e9d5732fed381"
  license "MIT"

  depends_on "python@3.12"

  def install
    bin.install "pdfclassify-#{version}.pyz" => "pdfclassify"
  end
end
