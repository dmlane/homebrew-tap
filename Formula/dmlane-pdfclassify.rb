class DmlanePdfclassify < Formula
  PYTHON_VERSION = "3.12"
  desc "A multilingual PDF semantic classifier"
  homepage "https://github.com/dmlane/pdfclassify"
  url "https://github.com/dmlane/pdfclassify/releases/download/2025.05.003/pdfclassify-2025.05.003.pyz"
  sha256 "d8a4d5029d968204b1b1a8da843f2a47d5f0527fe733ea3913c10662740256de"
  license "MIT"

  depends_on "python@#{PYTHON_VERSION}"

  def install
	pyz = Dir["*.pyz"].first
	libexec.install pyz
	(bin/"pdfclassify").write <<~EOS
		#!/bin/bash
		exec #{Formula["python@#{PYTHON_VERSION}"].opt_bin}/python#{PYTHON_VERSION} #{libexec}/#{pyz} "$@"
	EOS
	(bin/"pdfclassify").chmod 0755
  end
  test do
	  system "#{bin}/pdfclassify", "--version"
  end
end
