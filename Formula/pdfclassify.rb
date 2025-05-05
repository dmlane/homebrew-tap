class Pdfclassify < Formula
  desc "Awesome CLI tool"
  homepage "https://github.com/dmlane/pdfclassify"
  url "https://github.com/dmlane/pdfclassify/releases/download/v1.0.16/pdfclassify-1.0.16.pyz"
  sha256 "41a13481617e28ae93eff692b0cf8a1791a7b728e378221f6d83974137c0d50b"
  license "MIT"

  depends_on "python@3.12"

  def install
    bin.install "pdfclassify-#{version}.pyz" => "pdfclassify"
  end
end
