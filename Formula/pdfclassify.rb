class Pdfclassify < Formula
  desc "Awesome CLI tool"
  homepage "https://github.com/dmlane/pdfclassify"
  url "https://github.com/dmlane/pdfclassify/releases/download/v1.0.24/pdfclassify-1.0.24.pyz"
  sha256 "99a8f8f9ec8559e3d19d1e155786d5ef7665bdb4ee73e053669ce887dc9a7986"
  license "MIT"

  depends_on "python@3.12"

  def install
	#virtualenv_install_with_resources using: Formula["python@3.12"].opt_bin/"python3"
	libexec.install "pdfclassify.pyz"
	(bin/"pdfclassify").write <<~EOS
		#!/bin/bash
		exec #{Formula["python@3.12"].opt_bin}/python3 #{libexec}/pdfclassify.pyz "$@"
	EOS
  end
  test do
	  system "#{bin}/pdfclassify", "--version"
  end
end
