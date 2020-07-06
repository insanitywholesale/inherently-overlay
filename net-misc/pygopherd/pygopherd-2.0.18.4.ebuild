# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

DESCRIPTION="Multiprotocol Gopher/Web Server Written in Python"
HOMEPAGE="https://github.com/jgoerzen/pygopherd"
SRC_URI="https://github.com/jgoerzen/pygopherd/archive/debian/${PV}.tar.gz -> ${P}.tar.gz"

S="${WORKDIR}/${PN}-debian-${PV}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="acct-group/pygopherd
	acct-user/pygopherd"
RDEPEND="${DEPEND}"
BDEPEND=""
