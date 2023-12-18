class Dmltools < Formula
  include Language::Python::Virtualenv

  desc "Collection of useful homegrown command-line tools"
  homepage "https://github.com/dmlane/dmltools"
  url "https://github.com/dmlane/dmltools/archive/refs/tags/2023.12.1005-rc0.tar.gz"
  sha256 "770d9ee8952ef6e9a41ddd0aeb5ff44af1762e844dceb88b60969ad8b7b61810"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/dmltools", "--version"
  end
end
