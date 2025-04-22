# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# In Python 3.4, pathlib is now part of the standard library.
PYTHON_COMPAT=( python2_7 )

inherit distutils-r1 pypi

DESCRIPTION="Object-oriented filesystem paths"
HOMEPAGE="https://pathlib.readthedocs.org/"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha amd64 arm arm64 hppa ~mips ppc ppc64 ~s390 sparc x86"
RESTRICT="mirror"

python_test() {
	"${PYTHON}" test_pathlib.py || die
}
