#
# This package is NOT officially supported by the Xorg project.  Please
# report bugs related to this package on GitHub:
#
# https://github.com/stevendanna/habitat-plans
#
pkg_name=kbproto
pkg_origin=xorg
pkg_version=1.0.7
pkg_maintainer="Steven Danna <steve@chef.io>"
pkg_description="X11 XKB extension wire protocol"
pkg_upstream_url="https://www.x.org/"
pkg_license=('MIT')
pkg_source="https://www.x.org/releases/individual/proto/${pkg_name}-${pkg_version}.tar.bz2"
pkg_shasum="f882210b76376e3fa006b11dbd890e56ec0942bc56e65d1249ff4af86f90b857"
pkg_build_deps=(core/gcc core/make)
pkg_include_dirs=(include)
pkg_lib_dirs=(lib)
pkg_pconfig_dirs=(lib/pkgconfig)

do_check() {
    make check
}
