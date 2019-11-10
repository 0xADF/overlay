# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit git-r3 cmake-utils

DESCRIPTION="Linux port of FAR v2"
HOMEPAGE="http://farmanager.com/"
EGIT_REPO_URI="https://github.com/elfmz/far2l.git"
EGIT_COMMIT="3ce93f636c0c6f1d96e0cd10b69558bf6a8ccfae"

LICENSE="GPL-2.0"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="x11-libs/wxGTK:3.0"
RDEPEND="${DEPEND}"

src_prepare() {

	sed -i -e 's@execute_process(COMMAND ln -s ${CMAKE_INSTALL_PREFIX}/bin/far2l ${CMAKE_INSTALL_PREFIX}/lib/far2l/far2l_askpass)@@g' CMakeLists.txt
	sed -i -e 's@execute_process(COMMAND ln -s ${CMAKE_INSTALL_PREFIX}/bin/far2l ${CMAKE_INSTALL_PREFIX}/lib/far2l/far2l_sudoapp)@@g' CMakeLists.txt
	sed -i -e 's@execute_process(COMMAND rm -f ${CMAKE_INSTALL_PREFIX}/lib/far2l/Plugins/objinfo/plug/objinfo.far-plug-mb)@@g' CMakeLists.txt
	eapply_user
}

src_configure() {
	cmake-utils_src_configure
}

src_install() {
	cmake-utils_src_install
	dosym /usr/bin/far2l /usr/$(get_libdir)/far2l/far2l_askpass
	dosym /usr/bin/far2l /usr/$(get_libdir)/far2l/far2l_sudoapp
}
