# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{5,6,7,8} )

inherit distutils-r1

DESCRIPTION="Python client for pfSense-FauxAPI"
HOMEPAGE="https://github.com/ndejong/pfsense_fauxapi_client_python"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]
"
RDEPEND="${DEPEND}"
BDEPEND=""
