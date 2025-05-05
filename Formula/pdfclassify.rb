class Pdfclassify < Formula
  desc "Awesome CLI tool"
  homepage "https://github.com/dmlane/pdfclassify"
  url "https://github.com/dmlane/pdfclassify/releases/download/v1.0.27/pdfclassify-1.0.27.pyz"
  sha256 "cdb1da9e597812321bb24c5aab26603ce18e904639d52eb2ea1853495870f500"
  license "MIT"

  depends_on "python@3.12"

  def install
	pyz = Dir["*.pyz"].first
	libexec.install pyz
	(bin/"pdfclassify").write <<~EOS
		#!/bin/bash
		exec #{Formula["python@3.12"].opt_bin}/python3.12 #{libexec}/#{pyz} "$@"
	EOS
	(bin/"pdfclassify").chmod 0755
  end
  test do
	  system "#{bin}/pdfclassify", "--version"
  end
end
