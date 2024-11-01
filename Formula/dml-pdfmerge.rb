class DmlPdfmerge < Formula
  include Language::Python::Virtualenv

  desc "A short description"
  homepage "https://github.com/dmlane/dml-pdfmerge"
  url "https://github.com/dmlane/dml-pdfmerge/archive/refs/tags/2024.11.1019.tar.gz"
  sha256 "ece1c4142ae6ebd034c8f40929d4e91eb4f1efea62c19987473fae90facb9434"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end
  #---START-RESOURCES---
  resource "pypdf" do
    url "https://files.pythonhosted.org/packages/6b/9a/72d74f05f64895ebf1c7f6646cf7fe6dd124398c5c49240093f92d6f0fdd/pypdf-5.1.0.tar.gz"
    sha256 "425a129abb1614183fd1aca6982f650b47f8026867c0ce7c4b9f281c443d2740"
  end
  #---END-RESOURCES---
  test do
    system "#{bin}/pdfmerge", "--version"
  end
end
