DISTRO_FEATURES_append = " systemd"
DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"
VIRTUAL-RUNTIME_init_manager = "systemd"
VIRTUAL-RUNTIME_initscripts = "systemd-compat-units"

DISTRO_FEATURES_append= " uenvboot"
DISTRO_FEATURES_remove= "x11"
RPI_USE_U_BOOT="1"

ENABLE_UART = "1"
RPI_EXTRA_CONFIG = 'lcd_rotate=2'

IPCON_VER = "4.14"

IMAGE_INSTALL_append = " \
	ltrace \
	"
