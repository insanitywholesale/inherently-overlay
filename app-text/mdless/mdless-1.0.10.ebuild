# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
USE_RUBY="ruby24 ruby25"

inherit ruby-fakegem

DESCRIPTION="A utility that provides a formatted view of markdown files in the terminal"
HOMEPAGE="https://github.com/ttscoff/mdless"
SRC_URI="https://github.com/ttscoff/mdless/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+highlight"

DEPEND="dev-ruby/pygments_rb"
RDEPEND="${DEPEND}"
BDEPEND=""
