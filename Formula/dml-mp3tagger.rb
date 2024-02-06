class DmlMp3tagger < Formula
  include Language::Python::Virtualenv

  desc "Change mp3 tags to what I want"
  homepage "https://github.com/dmlane/dml-mp3tagger"
  url "https://github.com/dmlane/dml-mp3tagger/archive/refs/tags/2024.2.1004.tar.gz"
  sha256 "82ef7853035eb41a38a2cb5e2daaeb30423a8ff4b190ee783ce75701c9e7d9a5"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end
  #---START-RESOURCES---
  #---END-RESOURCES---
  test do
    system "#{bin}/mp3tagger", "--version"
  end
end
