FILESEXTRAPATHS_prepend := "${THISDIR}/files:"


IPADDR ?= "192.168.10.1"
SERVERIP ?= "192.168.10.2"

OVERRIDES_append = "${@bb.utils.contains('DISTRO_FEATURES', 'uenvboot', ':uenvboot', '', d)}"

SRC_URI_append_uenvboot = " file://boot.cmd.uenv.in"

do_compile_uenvboot() {
	sed -e 's/@IPADDR@/${IPADDR}/g' \
	    -e 's/@SERVERIP@/${SERVERIP}/g' \
	    "${WORKDIR}/boot.cmd.uenv.in" > "${WORKDIR}/boot.cmd" 
	mkimage -A arm -T script -C none -n "Boot script" -d "${WORKDIR}/boot.cmd" boot.scr	
}
