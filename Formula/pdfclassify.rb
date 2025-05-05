class Pdfclassify < Formula
  desc "Awesome CLI tool"
  homepage "https://github.com/dmlane/pdfclassify"
  url "https://github.com/dmlane/pdfclassify/releases/download/v1.0.26/pdfclassify-1.0.26.pyz"
  sha256 "38511ca94fcc1f12fef9c30eab125dd0f3f8526ab01c4295929f7e14fe8e1ba5"
  license "MIT"

  depends_on "python@3.12"

  def install
	pyz = Dir["*.pyz"].first
	libexec.install pyz
	(bin/"pdfclassify").write <<~EOS
		#!/bin/bash
		exec #{Formula["python@3.12"].opt_bin}/python3 #{libexec}/#{pyz} "$@"
	EOS
	(bin/"pdfclassify").chmod 0755
  end
  test do
	  system "#{bin}/pdfclassify", "--version"
  end
end
