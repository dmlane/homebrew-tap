class DmlanePdfclassify < Formula
  PYTHON_VERSION = "3.12"
  desc "A multilingual PDF semantic classifier"
  homepage "https://github.com/dmlane/pdfclassify"
  url "https://github.com/dmlane/pdfclassify/releases/download/2025.05.16/pdfclassify-2025.05.16.pyz"
  sha256 "ac22d128d6aa114c00807f3a0675280e00bc3bf6f63f10e87504aba98f987409"
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
