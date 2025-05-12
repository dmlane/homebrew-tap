class Dmlpdfdateextract < Formula
  PYTHON_VERSION = "3.12"
  desc "Extracts all dates from pdf or the Nth"
  homepage "https://github.com/dmlane/pdfdateextract"
  url "https://github.com/dmlane/pdfdateextract/releases/download/2025.5.5/pdfdateextract-2025.5.5.pyz"
  sha256 "eaa54fcff825c2e91ae4221d1ff59920b75a03625c15c0863e6e89fbf0b2f4e6"
  license "MIT"

  depends_on "python@#{PYTHON_VERSION}"

  def install
    pyz = Dir["*.pyz"].first
    libexec.install pyz
	(bin/"pdfdateextract").write <<~EOS
        #!/bin/bash
        exec #{Formula["python@#{PYTHON_VERSION}"].opt_bin}/python#{PYTHON_VERSION} #{libexec}/#{pyz} "$@"
    EOS
		(bin/"pdfdateextract").chmod 0755
  end
  test do
	  system "#{bin}/pdfdateextract", "--version"
  end
end
