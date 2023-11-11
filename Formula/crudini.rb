class Crudini < Formula
	include Language::Python::Virtualenv
	desc "crudini is a great tool for accessing ini files"
	homepage "https://github.com/pixelb/crudini"
	url "https://github.com/pixelb/crudini/archive/refs/tags/0.9.5.tar.gz"
	sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
	depends_on "python@3.12"
	license "GPLv2"
	def install
		virtualenv_install_with_resources
	end

	test do
		system "#{bin}/crudini", "--help"
	end
end
