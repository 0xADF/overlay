EAPI=4

DESCRIPTION="Telegram is a messaging app with a focus on speed and security, it’s super fast, simple and free. You can use Telegram on all your devices at the same time — your messages sync seamlessly across any of your phones, tablets or computers."
HOMEPAGE="https://telegram.org/"
SRC_URI="https://github.com/telegramdesktop/tdesktop/releases/download/v${PV}/tsetup.${PV}.beta.tar.xz"

inherit user

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64"

S="${WORKDIR}/Telegram"

src_install() {
    dobin Telegram
}
