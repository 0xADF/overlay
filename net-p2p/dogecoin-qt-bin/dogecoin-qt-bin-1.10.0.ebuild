EAPI=4

DESCRIPTION="very currency"
HOMEPAGE="https://dogecoin.com/"
SRC_URI="https://github.com/dogecoin/dogecoin/releases/download/v${PV}-dogeparty/dogecoin-${PV}-linux64.tar.gz"

inherit user

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64"

S="${WORKDIR}/dogecoin-${PV}"

src_install()
{
	dobin ./bin/dogecoin-cli
	dobin ./bin/dogecoind
	dobin ./bin/dogecoin-qt
	dobin ./bin/dogecoin-tx
	dolib ./lib/*.so
}
