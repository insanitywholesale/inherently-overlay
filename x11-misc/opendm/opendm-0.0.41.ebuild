# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A simple Display Manager written entirely in bash that uses xinit"
HOMEPAGE="https://github.com/simoniz0r/OpenDM"
SRC_URI="https://github.com/simoniz0r/OpenDM/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${WORKDIR}/OpenDM-${PV}"

DEPEND="x11-apps/xinit
x11-misc/qarma
x11-misc/wmctrl"
RDEPEND="${DEPEND}"
BDEPEND=""
