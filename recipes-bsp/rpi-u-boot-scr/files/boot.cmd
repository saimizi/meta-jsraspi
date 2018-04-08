setenv uenv_addr 0xfff000
setenv ipaddr	192.168.10.1
setenv serverip	192.168.10.2

tftpboot ${uenv_addr} uEnv.txt;
env import -t ${fileaddr} ${filesize}
run boot_uenv
