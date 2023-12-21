class DmlPdfmerge < Formula
  include Language::Python::Virtualenv

  desc "A short description"
  homepage "https://github.com/dmlane/dml-pdfmerge"
  url "https://github.com/dmlane/dml-pdfmerge/archive/refs/tags/2023.12.1004.tar.gz"
  sha256 "27dea9cbbc0019393d2f7b11e3b54b2a0df4f2068e15f195b95f2488b06265ed"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end
  #---START-RESOURCES---
  resource "pypdf" do
    url "https://files.pythonhosted.org/packages/23/38/5e123ad1b071f6aa068d6c5a01ae384d1794fce93b42ad22da152232f878/pypdf-3.17.3.tar.gz"
    sha256 "70c072218e3729218676bdf107e921fa49d1838c2f46056ce26d495c7e58f641"
  end
  #---END-RESOURCES---
  test do
    system "#{bin}/pdfmerge", "--version"
  end
end
