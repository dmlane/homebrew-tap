class DmlCheck4duplicates < Formula
  include Language::Python::Virtualenv

  desc "Search for identical file in any of the supplied directories"
  homepage "https://github.com/dmlane/dml-check4duplicates"
  url "https://github.com/dmlane/dml-check4duplicates/archive/refs/tags/2023.12.1001-rc0.tar.gz"
  sha256 "5a73b40a3b2d22e98c32eff8c81367f9ccc72a58e9d7f6c4c71e4848b2121583"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end
  #---START-RESOURCES---
  #---END-RESOURCES---
  test do
    system "#{bin}/check4duplicates", "--version"
  end
end
