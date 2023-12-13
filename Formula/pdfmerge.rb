class Pdfmerge < Formula
  include Language::Python::Virtualenv

  desc "Script to merge pdfs into a new pdf"
  homepage "https://github.com/dmlane/pdfmerge"
  url "https://github.com/dmlane/pdfmerge/archive/refs/tags/2023.12.1044.tar.gz"
  sha256 "43c70f7450a80fb493386b6651bd1c971f40c4ce68f13d5e64d905e172cb798b"
  license "MIT"

  depends_on "python@3.11"

  resource "PyPDF2" do
    url "https://files.pythonhosted.org/packages/9f/bb/18dc3062d37db6c491392007dfd1a7f524bb95886eb956569ac38a23a784/PyPDF2-3.0.1.tar.gz"
    sha256 "a74408f69ba6271f71b9352ef4ed03dc53a31aa404d29b5d31f53bfecfee1440"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/pdfmerge", "--version"
  end
end
