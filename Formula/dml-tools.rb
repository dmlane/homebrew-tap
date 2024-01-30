class DmlTools < Formula
  include Language::Python::Virtualenv

  desc "Set of command-line tools which need python"
  homepage "https://github.com/dmlane/dml-tools"
  url "https://github.com/dmlane/dml-tools/archive/refs/tags/2024.1.1006-rc0.tar.gz"
  sha256 "bfa68591dfb1174f31a0eb457a5976bff9d1987b7805c7af429b0942e9ed7f05"
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
