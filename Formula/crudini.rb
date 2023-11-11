class Crudini < Formula
	include Language::Python::Virtualenv
	desc "crudini is a great tool for accessing ini files"
	homepage "https://github.com/pixelb/crudini"
	url "https://github.com/pixelb/crudini/releases/download/0.9.5/crudini-0.9.5.tar.gz"
	sha256 "67e4bda34fd74972f985fe7ec092b33e125d6df1fcdc8d6f493ac906ac3c34a9"
	depends_on "python@3.12"
	license "GPLv2"
	def install
		virtualenv_install_with_resources
	end

	test do
		system "#{bin}/crudini", "--help"
	end
end
