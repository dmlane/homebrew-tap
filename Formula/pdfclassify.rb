class Mytool < Formula
  desc "Awesome CLI tool"
  homepage "https://github.com/dmlane/pdfclassify"
  url "https://github.com/yourorg/mytool/releases/download/v1.0.0/mytool-1.0.0.pyz"
  sha256 "REPLACED_BY_CI"
  license "MIT"

  depends_on "python@3.12"

  def install
    bin.install "pdfclassify-#{version}.pyz" => "mytool"
  end
end
