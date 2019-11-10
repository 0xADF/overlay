# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python3_{6,7} )

inherit git-r3 distutils-r1
EGIT_REPO_URI="https://github.com/jonasmalacofilho/${PN}.git"
EGIT_BRANCH="add-support-for-hue2"

DESCRIPTION="Cross-platform tool and drivers for liquid coolers and other devices"
HOMEPAGE="https://github.com/jonasmalacofilho/liquidctl/"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
   >=dev-lang/python-3.6
   dev-libs/libusb
   dev-libs/hidapi
   dev-python/cython-hidapi
   virtual/libudev
"

PATCHES=(
	"${FILESDIR}/hue-ambient-v2.patch"
)

python_install_all()
{
	distutils-r1_python_install_all
}
