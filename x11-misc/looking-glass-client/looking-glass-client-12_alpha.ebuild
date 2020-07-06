# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake-utils flag-o-matic

[[ "${PV}" =~ '_alpha'$ ]] && {
	MY_PV="a${PV//_alpha/}"
}

CMAKE_MAKEFILE_GENERATOR="emake"
CMAKE_IN_SOURCE_BUILD=1

DESCRIPTION="An extremely low latency KVMFR implementation for VGA PCI Passthrough guests"
HOMEPAGE="https://looking-glass.hostfission.com/"
SRC_URI="https://github.com/gnif/LookingGlass/archive/${MY_PV}.tar.gz"

S="${WORKDIR}/LookingGlass-${MY_PV}/client"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
virtual/glu
media-libs/libsdl2[opengl(+)]
dev-libs/nettle
dev-libs/gmp[cxx(+)]
app-emulation/spice[gstreamer(+)]
app-emulation/spice-protocol
media-libs/fontconfig
x11-libs/libX11
media-fonts/freefont
dev-libs/libconfig
x11-libs/libXfixes
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_prepare() {
	cmake-utils_src_prepare
}

src_configure() {
	cmake-utils_src_configure
}

src_install() {
	dobin "${S}/looking-glass-client"
}
