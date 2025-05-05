class Pdfclassify < Formula
  desc "Awesome CLI tool"
  homepage "https://github.com/dmlane/pdfclassify"
  url "https://github.com/dmlane/pdfclassify/releases/download/v1.0.8/pdfclassify-1.0.8.pyz"
  sha256 "6da4a9e84ade3a46333c45397ee360078d5eec9060d20129fd39f1ee17efb33f"
  license "MIT"

  depends_on "python@3.12"

  def install
    bin.install "pdfclassify-#{version}.pyz" => "pdfclassify"
  end
end
