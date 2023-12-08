setenv kernel_version "6.6.2_1"
setenv bootargs "debug console=ttyS2,1500000 loglevel=7 root=/dev/block/179:1"
load mmc 1 ${fdt_addr_r} boot/rockchip-fixup.scr
source ${fdt_addr_r}
load mmc 1 ${fdt_addr_r} boot/rk3318-box.dtb
load mmc 1 ${kernel_addr_r} boot/vmlinuz-6.6.2_1
load mmc 1 ${ramdisk_addr_r} boot/initramfs-${kernel_version}.uimg
booti ${kernel_addr_r} ${ramdisk_addr_r} ${fdt_addr_r}

