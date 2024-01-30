class DmlTools < Formula
  include Language::Python::Virtualenv

  desc "Set of command-line tools which need python"
  homepage "https://github.com/dmlane/dml-tools"
  url "https://github.com/dmlane/dml-tools/archive/refs/tags/2024.1.1008-rc0.tar.gz"
  sha256 "83e5b6adc242948a5565ee156edd31234c3a18750960690dc1b9707f60240b80"
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
