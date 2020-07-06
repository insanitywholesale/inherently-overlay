# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A terminal based gopher client"
HOMEPAGE="https://github.com/kieselsteini/cgo"
SRC_URI="https://github.com/kieselsteini/cgo/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_configure() {
	sed -i "s%PREFIX = /usr/local%PREFIX = ${EPREFIX}/usr%" Makefile
}
