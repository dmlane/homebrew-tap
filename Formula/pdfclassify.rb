class Pdfclassify < Formula
  include Language::Python::Virtualenv
  desc "Awesome CLI tool"
  homepage "https://github.com/dmlane/pdfclassify"
  url "https://github.com/dmlane/pdfclassify/releases/download/v1.0.21/pdfclassify-1.0.21.pyz"
  sha256 "799b20211d5dc62be87bb179ad67b680a90d58d6c897dec13cf2defa76e4f480"
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
