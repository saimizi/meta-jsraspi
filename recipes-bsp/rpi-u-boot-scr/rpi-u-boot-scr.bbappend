FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

IPADDR ?= "192.168.10.1"
SERVERIP ?= "192.168.10.2"

setup_ipinfo() {
	sed -i "s/@IPADDR@/${IPADDR}/g" ${WORKDIR}/boot.cmd
	sed -i "s/@SERVERIP@/${SERVERIP}/g" ${WORKDIR}/boot.cmd
}

do_compile[prefuncs] += "setup_ipinfo"
