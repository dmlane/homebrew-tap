class Crudini < Formula
	include Language::Python::Virtualenv
	desc "crudini is a great tool for accessing ini files"
	homepage "https://github.com/pixelb/crudini"
	url "https://github.com/pixelb/crudini/archive/refs/tags/0.9.5.tar.gz"
	sha256 "b0492cb9ce126ce3c05ae7d8424c0fca5b26a788f593afe000150ba0c4b23cdb"
	depends_on "python@3.11"
	license "GPLv2"
	def install
		virtualenv_install_with_resources
	end

	test do
		system "#{bin}/crudini", "--help"
	end
end
