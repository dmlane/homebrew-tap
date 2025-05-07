class DmlanePdfclassify < Formula
  PYTHON_VERSION = "3.12"
  desc "A multilingual PDF semantic classifier"
  homepage "https://github.com/dmlane/pdfclassify"
  url "https://github.com/dmlane/pdfclassify/releases/download/2025.05.18/pdfclassify-2025.05.18.pyz"
  sha256 "98475dba655b1b4158c20e9472799375441b4121093572e76909d40ad2661613"
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
