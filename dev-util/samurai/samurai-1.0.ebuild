# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="ninja-compatible build tool written in C"
HOMEPAGE="https://github.com/michaelforney/samurai"
SRC_URI="https://github.com/michaelforney/samurai/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_configure() {
	sed -i "s%PREFIX=/usr/local%PREFIX=/usr%" Makefile || die "sed failed"
}
