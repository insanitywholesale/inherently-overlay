# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_6 )
inherit distutils-r1

DISTUTILS_USE_SETUPTOOLS=rdepend

DESCRIPTION="A small, simple editor for beginner Python programmers"
HOMEPAGE="http://codewith.mu/"
SRC_URI="https://github.com/mu-editor/mu/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

#some deps are surely missing
DEPEND="
	dev-python/nudatus[${PYTHON_USEDEP}]
	dev-python/semver[${PYTHON_USEDEP}]
	dev-python/colorzero[${PYTHON_USEDEP}]
	dev-python/gpiozero[${PYTHON_USEDEP}]
	dev-python/guizero[${PYTHON_USEDEP}]
	dev-python/pynsist[${PYTHON_USEDEP}]
	dev-python/pgzero[${PYTHON_USEDEP}]
	dev-python/nudatus[${PYTHON_USEDEP}]
"
RDEPEND="${DEPEND}"
BDEPEND=""

python_configure() {
	sed -i '/install_requires/s/pyflakes==/pyflakes>=/' setup.py
	sed -i 's%\(install_req.\+\)pycodestyle==%\1pycodestyle>=%' setup.py
}
