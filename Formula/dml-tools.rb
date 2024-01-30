class DmlTools < Formula
  include Language::Python::Virtualenv

  desc "Set of command-line tools which need python"
  homepage "https://github.com/dmlane/dml-tools"
  url "https://github.com/dmlane/dml-tools/archive/refs/tags/2024.1.1004-rc0.tar.gz"
  sha256 "bfa79f80f4de46c26abd448f4aa00be26c0c0c356d0787686af18b054d20ad60"
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
