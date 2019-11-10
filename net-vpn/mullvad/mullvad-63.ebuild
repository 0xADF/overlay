EAPI=5

PYTHON_COMPAT=(python2_7)
inherit distutils-r1

DESCRIPTION="The Mullvad VPN Client"
HOMEPAGE="https://mullvad.net"
#SRC_URI="https://mullvad.net/static/download/${P}.tar.gz"
SRC_URI="https://mullvad.net/media/client/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND="dev-python/appdirs
	dev-python/wxpython
	dev-python/ipaddr
	dev-python/netifaces
	dev-python/psutil
	net-vpn/openvpn"

src_prepare() {
        cd ${WORKDIR}/${P}
        rm -r src/tests
#	cd src/mullvad
#	epatch ${FILESDIR}/client.conf.linux.patch
#	epatch ${FILESDIR}/mullvad.desktop.patch
}

