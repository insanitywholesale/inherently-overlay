# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A command line client for tldr, written in plain ISO C90"
HOMEPAGE="https://github.com/tldr-pages/tldr-cpp-client"
SRC_URI="https://github.com/tldr-pages/tldr-cpp-client/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-libs/libzip
dev-libs/openssl
net-misc/curl[openssl]
virtual/pkgconfig
"
RDEPEND="${DEPEND}"
BDEPEND=""

#fails with sandbox violation during install phase, needs fix
