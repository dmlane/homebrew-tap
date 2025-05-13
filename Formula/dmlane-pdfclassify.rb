class DmlanePdfclassify < Formula
  PYTHON_VERSION = "3.12"
  desc "A multilingual PDF semantic classifier"
  homepage "https://github.com/dmlane/pdfclassify"
  url "https://github.com/dmlane/pdfclassify/releases/download/2025.05.23/pdfclassify-2025.05.23.pyz"
  sha256 "957bf760d355272345cb852968fe279f66a3c479904354262cd80a064d054df2"
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
