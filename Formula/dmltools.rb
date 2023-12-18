class Dmltools < Formula
  include Language::Python::Virtualenv

  desc "Collection of useful homegrown command-line tools"
  homepage "https://github.com/dmlane/dmltools"
  url "https://github.com/dmlane/dmltools/archive/refs/tags/2023.12.1007-rc0.tar.gz"
  sha256 "0e0c781aea1271de34261f7f4898c5ace6112230370cdbfb32d6cd70afea39e6"
  license "MIT"

  depends_on "python@3.11"
  depends_on "cmake"

  def install
    virtualenv_install_with_resources
  end

  resource "eyed3" do
    url "https://files.pythonhosted.org/packages/75/a5/263664ef1f1be58f72c8bc66ef128781af0a8110aeb591428d5c3a67b356/eyeD3-0.9.7.tar.gz"
    sha256 "93b18e9393376a45114f9409d7cca119fb6f4f9a37d4b697b500af48b4c5cf0f"
  end
  resource "macos-tags" do
    url "https://files.pythonhosted.org/packages/d4/6e/e0b2ea37ef831a5c6b5aebbd14701d96d9dc061f04a867b05335a4bc099d/macos-tags-1.5.1.tar.gz"
    sha256 "f144c5bc05d01573966d8aca2483cb345b20b76a5b32e9967786e086a38712e7"
  end

  test do
    system "#{bin}/dmltools", "--version"
  end
end
