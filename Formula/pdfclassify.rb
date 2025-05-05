class Pdfclassify < Formula
  desc "Awesome CLI tool"
  homepage "https://github.com/dmlane/pdfclassify"
  url "https://github.com/dmlane/pdfclassify/releases/download/v1.0.6/pdfclassify-1.0.6.pyz"
  sha256 "6da4767a85af38ac1f7aa15f49211fa84dfa6ce94c12474d22d07b765c8464bb"
  license "MIT"

  depends_on "python@3.12"

  def install
    bin.install "pdfclassify-#{version}.pyz" => "pdfclassify"
  end
end
