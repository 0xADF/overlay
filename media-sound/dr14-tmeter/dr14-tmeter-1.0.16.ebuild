EAPI=5
PYTHON_COMPAT=( python{3_1,3_2,3_3,3_4,3_5} )

inherit distutils-r1

DESCRIPTION="DR14 T.meter is a free and opensource command line tool for computing the Dynamic Range of your music according to the procedure used in the off-line meter released by the Pleasurize Music Foundation"
HOMEPAGE="http://github.com/simon-r/dr14_t.meter"
SRC_URI="http://github.com/simon-r/dr14_t.meter/archive/v${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

S=${WORKDIR}/dr14_t.meter-${PV}/

RDEPEND=""
DEPEND="${RDEPEND}
		dev-python/setuptools[${PYTHON_USEDEP}]"

DOCS=( README )
