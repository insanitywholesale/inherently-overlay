# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Simple log analyzer for pygopherd"
HOMEPAGE="https://github.com/RaymiiOrg/pygopherdstats"
SRC_URI="https://github.com/RaymiiOrg/pygopherdstats/raw/master/${PN}.sh"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${WORKDIR}"

DEPEND="
	net-misc/pygopherd
	virtual/logger
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	dobin "${DISTDIR}/${PN}.sh"
}
