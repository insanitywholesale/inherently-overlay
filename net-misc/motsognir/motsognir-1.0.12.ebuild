# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Motsognir - a robust, reliable and easy to install gopher server"
HOMEPAGE="http://motsognir.sourceforge.net/"
SRC_URI="https://sourceforge.net/projects/${PN}/files/v${PV}/${P}.tar.xz/download -> ${P}.tar.xz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_prepare() {
	sed -i -e 's|cp motsognir.8.gz $(PREFIX)/$(DESTDIR)/usr/share/man/man8/| |g' "${S}/Makefile" || die
	sed -i -e "s|doc/motsognir|doc/${P}|g" "${S}/Makefile" || die
	default
}
