class Pdfclassify < Formula
  desc "Awesome CLI tool"
  homepage "https://github.com/dmlane/pdfclassify"
  url "https://github.com/dmlane/pdfclassify/releases/download/v1.0.15/pdfclassify-1.0.15.pyz"
  sha256 "7ad39b8bd0a1d9781e7717aadb7c9cf77630222ea67fdbf90f7ae41f3aad01d1"
  license "MIT"

  depends_on "python@3.12"

  def install
    bin.install "pdfclassify-#{version}.pyz" => "pdfclassify"
  end
end
