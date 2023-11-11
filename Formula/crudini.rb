class Crudini < Formula
	include Language::Python::Virtualenv
	desc "crudini is a great tool for accessing ini files"
	homepage "https://github.com/pixelb/crudini"
	url "https://github.com/pixelb/crudini/archive/refs/tags/0.9.5.tar.gz"
	sha256 "b0492cb9ce126ce3c05ae7d8424c0fca5b26a788f593afe000150ba0c4b23cdb"
	depends_on "python@3.11"
	license "GPLv2"
	version "0.9.5"
	resource "iniparse" do
    	url "https://files.pythonhosted.org/packages/4c/9a/02beaf11fc9ea7829d3a9041536934cd03990e09c359724f99ee6bd2b41b/iniparse-0.5.tar.gz"
    	sha256 "932e5239d526e7acb504017bb707be67019ac428a6932368e6851691093aa842"
  	end
	resource "setuptools-scm" do
		url "https://files.pythonhosted.org/packages/eb/b1/0248705f10f6de5eefe7ff93e399f7192257b23df4d431d2f5680bb2778f/setuptools-scm-8.0.4.tar.gz"
		sha256 "b5f43ff6800669595193fd09891564ee9d1d7dcb196cab4b2506d53a2e1c95c7"
	end
	def install
		virtualenv_install_with_resources
	end

	test do
		system "#{bin}/crudini", "--help"
	end
end