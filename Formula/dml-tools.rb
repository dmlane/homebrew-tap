class DmlTools < Formula
  include Language::Python::Virtualenv

  desc "Set of command-line tools which need python"
  homepage "https://github.com/dmlane/dml-tools"
  url "https://github.com/dmlane/dml-tools/archive/refs/tags/2024.1.1011-rc0.tar.gz"
  sha256 "19ef2107e3d0ce4b67c12337864191f4fd45ccc303d41eb1ec80d75bd7f6e7c4"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end
  #---START-RESOURCES---
  #---END-RESOURCES---
  test do
    system "#{bin}/tools", "--version"
  end
end
