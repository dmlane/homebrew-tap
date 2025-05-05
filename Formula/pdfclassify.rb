class Pdfclassify < Formula
  desc "Awesome CLI tool"
  homepage "https://github.com/dmlane/pdfclassify"
  url "https://github.com/dmlane/pdfclassify/releases/download/v1.0.20/pdfclassify-1.0.20.pyz"
  sha256 "c11b76aea860db3e177b040a434e70e9bb5fed2eb37784cb47e0f7257582556a"
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
