# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_6 )
inherit distutils-r1

MY_PN="PyQtChart"
MY_P="${MY_PN}-${PV}"
DISTUTILS_USE_SETUPTOOLS=pyproject.toml

DESCRIPTION="Python bindings for the Qt Charts library"
HOMEPAGE="https://www.riverbankcomputing.com/software/pyqtchart/"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

S="${WORKDIR}/${MY_P}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-python/pyproject2setuppy[${PYTHON_USEDEP}]
dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
BDEPEND=""
