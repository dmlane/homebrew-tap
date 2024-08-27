class DmlMp3tagger < Formula
  include Language::Python::Virtualenv

  desc "Change mp3 tags to what I want"
  homepage "https://github.com/dmlane/dml-mp3tagger"
  url "https://github.com/dmlane/dml-mp3tagger/archive/refs/tags/2024.8.1017.tar.gz"
  sha256 "c385f66d7e4c1277fb3f8bc70747f53a16161c46c7232881c9d3cb2fa0b2dd86"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end
  #---START-RESOURCES---
  resource "appdirs" do
    url "https://files.pythonhosted.org/packages/d7/d8/05696357e0311f5b5c316d7b95f46c669dd9c15aaeecbb48c7d0aeb88c40/appdirs-1.4.4.tar.gz"
    sha256 "7d5d0167b2b1ba821647616af46a749d1c653740dd0d2415100fe26e27afdf41"
  end
  resource "mutagen" do
    url "https://files.pythonhosted.org/packages/81/e6/64bc71b74eef4b68e61eb921dcf72dabd9e4ec4af1e11891bbd312ccbb77/mutagen-1.47.0.tar.gz"
    sha256 "719fadef0a978c31b4cf3c956261b3c58b6948b32023078a2117b1de09f0fc99"
  end
  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
  end
  resource "six" do
    url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
    sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
  end
  #---END-RESOURCES---
  test do
    system "#{bin}/mp3tagger", "--version"
  end
end
