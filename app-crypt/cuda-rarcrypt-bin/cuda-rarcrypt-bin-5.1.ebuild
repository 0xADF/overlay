# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit eutils

DESCRIPTION="A Nvidia GPU-based RAR bruteforcer"
HOMEPAGE="http://www.crark.net/"
SRC_URI="http://www.crark.net/download/crark51-linux-opencl.rar"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="-*"
#was "x86"
IUSE=""

DEPEND="dev-util/nvidia-cuda-sdk
		app-arch/unrar"
RDEPEND="x11-drivers/nvidia-drivers"
S="${WORKDIR}/"

src_install() {
	dobin crark english.def || die "dobin failed"
	dolib rarcrypt30-cl.dll rarcrypt50-cl.dll
	dodoc README
}
