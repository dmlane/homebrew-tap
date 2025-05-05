class Pdfclassify < Formula
  include Language::Python::Virtualenv
  desc "Awesome CLI tool"
  homepage "https://github.com/dmlane/pdfclassify"
  url "https://github.com/dmlane/pdfclassify/releases/download/v1.0.22/pdfclassify-1.0.22.pyz"
  sha256 "bcda91caa68a6fd9af7662ed5a6c040cec7a84194bd69e6f1a4252809a0ad910"
  license "MIT"

  depends_on "python@3.12"

  def install
	#virtualenv_install_with_resources using: Formula["python@3.12"].opt_bin/"python3"
    virtualenv_install_with_resources
  end
  test do
	  system "#{bin}/pdfclassify", "--version"
  end
end
