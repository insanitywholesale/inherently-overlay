# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit bash-completion-r1 udev

DESCRIPTION="Automatically select a display configuration based on connected devices"
HOMEPAGE="https://github.com/phillipberndt/autorandr"
SRC_URI="https://github.com/phillipberndt/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64"
IUSE="bash-completion udev"

DEPEND="
	virtual/pkgconfig
	${RDEPEND}
"
RDEPEND="
	bash-completion? ( app-shells/bash )
	udev? ( virtual/udev )
"

src_install() {
	targets="autorandr autostart_config"
	if use bash-completion; then
		targets="$targets bash_completion"
	fi
	if use udev; then
		targets="$targets udev"
	fi

	emake DESTDIR="${D}" \
		install \
		BASH_COMPLETION_DIR="$(get_bashcompdir)" \
		UDEV_RULES_DIR="$(get_udevdir)"/rules.d \
		TARGETS="$targets"
}

pkg_postinst() {
	if use udev; then
		udev_reload
	fi
}
