class Pdfmerge < Formula
  include Language::Python::Virtualenv

  desc "Script to merge pdfs into a new pdf"
  homepage "https://github.com/dmlane/pdfmerge"
  url "https://github.com/dmlane/pdfmerge/archive/refs/tags/2023.12.1001.tar.gz"
  sha256 "d9aa2e159f000a39e6c3e622b9bde049d67f274e17a7ebeebade2cc5bc5d7219"
  license "MIT"

  depends_on "python@3.11"

  resource "iniparse" do
    url "https://files.pythonhosted.org/packages/4c/9a/02beaf11fc9ea7829d3a9041536934cd03990e09c359724f99ee6bd2b41b/iniparse-0.5.tar.gz"
    sha256 "932e5239d526e7acb504017bb707be67019ac428a6932368e6851691093aa842"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/pdfmerge", "--version"
  end
end
