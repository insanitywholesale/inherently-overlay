# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_6 )
inherit distutils-r1

DESCRIPTION="A Python 3 library to allow learners to quickly and easily create GUIs"
HOMEPAGE="https://github.com/lawsie/guizero"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-lang/tk
dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
BDEPEND=""
