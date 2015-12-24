EAPI=4

inherit eutils

DESCRIPTION="Yet another factoring utility"
HOMEPAGE="http://sourceforge.net/projects/yafu/"
SRC_URI="http://downloads.sourceforge.net/project/yafu/${PV}/yafu-${PV}.zip"
#SRC_URI="mirror://sourceforge/${PN}/${PV}/${P}.zip"

SLOT="0"
LICENSE="public-domain"
KEYWORDS="amd64"

RDEPEND="sci-mathematics/gmp-ecm
         sci-mathematics/ggnfs"

S=${WORKDIR}

src_prepare() {
	epatch ${FILESDIR}/yafu.ini.patch || die
}

src_install() {
	dobin yafu

	insinto /usr/bin
	doins yafu.ini
}

