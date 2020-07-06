# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake-utils flag-o-matic git-r3

CMAKE_IN_SOURCE_BUILD=1

DESCRIPTION="A lightweight, fast and extensible game server for Minecraft"
HOMEPAGE="https://cuberite.org/"
EGIT_REPO_URI="https://github.com/cuberite/cuberite.git"
EGIT_SUBMODULES=( '*' )

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_prepare() {
	sed -i 's/-Weverything -Werror//' SetFlags.cmake || die "sed failed"
	sed -i 's/-Werror -Wall//' lib/jsoncpp/CMakeLists.txt || die "sed in jsoncpp failed"
	sed -i 's/-Werror//' src/WorldStorage/CMakeLists.txt ||  die "sed in WorldStorage failed"
	cmake-utils_src_prepare
}

src_configure() {
	append-cflags -fPIC
	append-cxxflags -fPIC
	local cmakeargs=(
	-G Ninja
	-DCMAKE_INSTALL_PREFIX="${EPREFIX}/usr"
	-DCMAKE_BUILD_TYPE=RELEASE
	)
	"${CMAKE_BINARY}" "${cmakeargs[@]}" . || die "cmake failed"
}

src_install() {
	dobin "${S}/Server/Cuberite"
	default
}
