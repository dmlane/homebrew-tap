class Pdfclassify < Formula
  desc "Awesome CLI tool"
  homepage "https://github.com/dmlane/pdfclassify"
  url "https://github.com/dmlane/pdfclassify/releases/download/v1.0.25/pdfclassify-1.0.25.pyz"
  sha256 "4c6c5af1cb8ac272f5e487eb1304c9e57233ae241377496aab9bacfed76ed564"
  license "MIT"

  depends_on "python@3.12"

  def install
	#virtualenv_install_with_resources using: Formula["python@3.12"].opt_bin/"python3"
	libexec.install "pdfclassify.pyz"
	(bin/"pdfclassify").write <<~EOS
		#!/bin/bash
		exec #{Formula["python@3.12"].opt_bin}/python3 #{libexec}/pdfclassify.pyz "$@"
	EOS
	(bin/"pdfclassify").chmod 0755
  end
  test do
	  system "#{bin}/pdfclassify", "--version"
  end
end
