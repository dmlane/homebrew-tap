class Dmltools < Formula
  include Language::Python::Virtualenv

  desc "Collection of useful homegrown command-line tools"
  homepage "https://github.com/dmlane/dmltools"
  url "https://github.com/dmlane/dmltools/archive/refs/tags/2023.12.1010-rc0.tar.gz"
  sha256 "42689945b9bc025b7fa7d4c3c8549fd1843d5c2e7325dc540a440648b5b42f2a"
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
  resource "mdfind-wrapper" do
    url "https://files.pythonhosted.org/packages/0e/74/148968c2665c0f2db1fbd470fbb454b1f808ea5d4cb8d75bc99f451d0ece/mdfind-wrapper-0.1.5.tar.gz"
    sha256 "c0dbd5bc99c6d1fb4678bfa1841a3380ccac61e9b43a26a8d658aa9cafe27441"
  end
  resource "xattr" do
    url "https://files.pythonhosted.org/packages/91/ac/5898d1811abc88c3710317243168feff61ce12be220b9c92ee045ecd66c4/xattr-0.9.9.tar.gz"
    sha256 "09cb7e1efb3aa1b4991d6be4eb25b73dc518b4fe894f0915f5b0dcede972f346"
  end
  test do
    system "#{bin}/dmltools", "--version"
  end
end
