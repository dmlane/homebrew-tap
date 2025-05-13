class DmlanePdfclassify < Formula
  PYTHON_VERSION = "3.12"
  desc "A multilingual PDF semantic classifier"
  homepage "https://github.com/dmlane/pdfclassify"
  url "https://github.com/dmlane/pdfclassify/releases/download/2025.05.22/pdfclassify-2025.05.22.pyz"
  sha256 "980f9783a4f29ae2583b468dae26c257944374f73b0c12b10e326598f5a86326"
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
