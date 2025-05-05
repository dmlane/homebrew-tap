class Mytool < Formula
  desc "Awesome CLI tool"
  homepage "https://github.com/dmlane/pdfclassify"
  url "https://github.com/dmlane/pdfclassify/releases/download/v1.0.5/pdfclassify-1.0.5.pyz"
  sha256 "ca8bad44c9137026dd25894578edcebac48edb8110a4707120869a813320ee7a"
  license "MIT"

  depends_on "python@3.12"

  def install
    bin.install "pdfclassify-#{version}.pyz" => "mytool"
  end
end
