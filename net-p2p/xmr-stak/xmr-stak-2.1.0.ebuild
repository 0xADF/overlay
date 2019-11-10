# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit cmake-utils

DESCRIPTION="Unified All-in-one Monero miner"
HOMEPAGE="https://github.com/fireice-uk/xmr-stak"
SRC_URI="https://github.com/fireice-uk/${PN}/archive/v${PV}.tar.gz"

LICENSE="GPL-2.0"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="openssl cuda opencl static-libs http cpumining hwloc"

DEPEND="openssl? ( dev-libs/openssl )
	http? ( net-libs/libmicrohttpd )
	cuda? ( dev-util/nvidia-cuda-sdk )
	opencl? ( virtual/opencl )
	hwloc? ( sys-apps/hwloc )"

RDEPEND="${DEPEND}
	openssl? ( dev-util/nvidia-cuda-toolkit )"

src_prepare()
{
	default_src_prepare
	epatch ${FILESDIR}/patch1.diff || die
	epatch ${FILESDIR}/patch2.diff || die
}

src_configure() {
	        local mycmakeargs=(
                -DCMAKE_LINK_STATIC=$(usex static-libs)
                -DMICROHTTPD_ENABLE=$(usex http)
                -DOpenSSL_ENABLE=$(usex openssl)
                -DCPU_ENABLE=$(usex cpumining)
                -DCUDA_ENABLE=$(usex cuda)
                -DOpenCL_ENABLE=$(usex opencl)
                -DHWLOC_ENABLE=$(usex hwloc)
		)
	cmake-utils_src_configure
}
