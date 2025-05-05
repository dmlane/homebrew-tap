class Pdfclassify < Formula
  desc "Awesome CLI tool"
  homepage "https://github.com/dmlane/pdfclassify"
  url "https://github.com/dmlane/pdfclassify/releases/download/v1.0.12/pdfclassify-1.0.12.pyz"
  sha256 "50ca3e0556a0f661095e4d713e87bdf06d31f7721f1ecc047080f3804da453ac"
  license "MIT"

  depends_on "python@3.12"

  def install
    bin.install "pdfclassify-#{version}.pyz" => "pdfclassify"
  end
end
