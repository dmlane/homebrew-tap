class Pdfmerge < Formula
  include Language::Python::Virtualenv

  desc "Script to merge pdfs into a new pdf"
  homepage "https://github.com/dmlane/pdfmerge"
  url "https://github.com/dmlane/pdfmerge/archive/refs/tags/2023.12.1067-rc0.tar.gz"
  sha256 "f30a92fddb83f1ac62ecfff833f23e4e27fd90f2fa78cc2de3ef0705fc49d215"
  license "MIT"

  depends_on "python@3.11"

  resource "pypdf" do
    url "https://files.pythonhosted.org/packages/89/d4/57ca6f20407a86e19f45b3e19441cf39aaabb4e7cb307f9a94b02d7dbedf/pypdf-3.17.2.tar.gz"
    sha256 "d6f077060912f8292d7db3da04f7bf2428ac974781e11eef219193a22120f649"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/pdfmerge", "--version"
  end
end
