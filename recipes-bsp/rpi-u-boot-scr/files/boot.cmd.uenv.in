setenv uenv_addr 0xfff000
setenv ipaddr	@IPADDR@
setenv serverip	@SERVERIP@

tftpboot ${uenv_addr} uEnv.txt;
env import -t ${fileaddr} ${filesize}
run boot_uenv
