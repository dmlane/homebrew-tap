class DmlTools < Formula
  include Language::Python::Virtualenv

  desc "Set of command-line tools which need python"
  homepage "https://github.com/dmlane/dml-tools"
  url "https://github.com/dmlane/dml-tools/archive/refs/tags/2024.1.1015-rc0.tar.gz"
  sha256 "3679ddb2e7c8c709e302ec7cb28bd7ae455e45ef0903aa64298b4c5640fb48e1"
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
