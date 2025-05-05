class Pdfclassify < Formula
  desc "Awesome CLI tool"
  homepage "https://github.com/dmlane/pdfclassify"
  url "https://github.com/dmlane/pdfclassify/releases/download/v1.0.13/pdfclassify-1.0.13.pyz"
  sha256 "246abf3cc3467cc9f0d9cba1b923ee11d3bcf2af6b2bac07be46d15e0be8d4e6"
  license "MIT"

  depends_on "python@3.12"

  def install
    #bin.install "pdfclassify-#{version}.pyz" => "pdfclassify"
	virtualenv_install_with_resources
  end
  test do
	  system "#{bin}/pdfclassify", "--version"
  end
end
