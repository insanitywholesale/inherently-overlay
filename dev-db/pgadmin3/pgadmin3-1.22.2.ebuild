# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit eutils multilib versionator wxwidgets

DESCRIPTION="wxWidgets GUI for PostgreSQL"
HOMEPAGE="https://www.pgadmin.org/"
SRC_URI="https://github.com/postgres/${PN}/archive/REL-1_22_2.tar.gz -> ${P}.tar.gz"

S="${WORKDIR}/${PN}-REL-1_22_2"

LICENSE="POSTGRESQL"
KEYWORDS="~amd64"
SLOT="0"
IUSE="debug +databasedesigner"

DEPEND="
	x11-libs/wxGTK:3.0=[X]
	>=dev-db/postgresql-8.4.0:=
	>=dev-libs/libxml2-2.6.18
	>=dev-libs/libxslt-1.1"
RDEPEND="${DEPEND}"

PATCHES=( "${FILESDIR}"/pgadmin3-{desktop-r1,gcc6-null-pointer}.patch )

src_configure() {
	WX_GTK_VER="3.0"

	setup-wxwidgets

	./bootstrap

	econf --with-wx-version=${WX_GTK_VER} \
		$(use_enable debug) \
		$(use_enable databasedesigner)
}

src_install() {
	emake DESTDIR="${D}" install

	newicon "${S}/pgadmin/include/images/pgAdmin3.png" ${PN}.png

	domenu "${S}/pkg/pgadmin3.desktop"

	# Fixing world-writable files
	fperms -R go-w /usr/share
}
