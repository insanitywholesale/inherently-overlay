# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake-utils

DESCRIPTION="Linux System Optimizer and Monitoring"
HOMEPAGE="https://github.com/oguzhaninan/Stacer"
SRC_URI="https://github.com/oguzhaninan/Stacer/archive/v${PV}.tar.gz -> ${P}.tar.gz"

S="${WORKDIR}/Stacer-${PV}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-qt/qtcharts
	dev-qt/qtconcurrent
	dev-qt/qtnetwork"
RDEPEND="${DEPEND}"
BDEPEND=""


src_install() {
	default
	dobin ${BUILD_DIR}/output/stacer
	insinto /usr/share/pixmaps/
	newins stacer/static/logo.png stacer.png
	insinto /usr/share/applications/
	doins applications/stacer.desktop
}
