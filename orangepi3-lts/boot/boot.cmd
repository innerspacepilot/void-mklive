setenv bootargs "console=ttyS0,115200 loglevel=7 root=/dev/mmcblk0p1"
load mmc 0 ${kernel_addr_r} boot/vmlinuz-5.15.89_1
load mmc 0 ${fdt_addr_r} boot/dtbs/dtbs-5.15.89_1/allwinner/sun50i-h6-orangepi-3-lts.dtb
load mmc 0 ${ramdisk_addr_r} boot/initramfs-5.15.89_1.uimg
booti ${kernel_addr_r} ${ramdisk_addr_r} ${fdt_addr_r}
