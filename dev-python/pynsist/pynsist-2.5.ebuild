# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_6 )
inherit distutils-r1

DESCRIPTION="Build NSIS installers for Python applications."
HOMEPAGE="https://pynsist.readthedocs.io/en/latest/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
BDEPEND=""


#even with the following there is the QA warning https://wiki.gentoo.org/wiki/Project:Python/Byte_compiling
python_compile_all() {
	# all
	"${PYTHON}" -m compileall -q -f -d "${sitedir}" "${D}${sitedir}"
	# python2.7+ & pypy3.5+
	"${PYTHON}" -OO -m compileall -q -f -d "${sitedir}" "${D}${sitedir}"
	# python3.5+ & pypy3.5+
	"${PYTHON}" -O -m compileall -q -f -d "${sitedir}" "${D}${sitedir}"
}
