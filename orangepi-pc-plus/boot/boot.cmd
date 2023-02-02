setenv bootargs "console=ttyS0,115200 loglevel=7 root=PARTUUID=aab28ca1-01"
load mmc 0 ${kernel_addr_r} boot/vmlinuz-6.1.8_1
load mmc 0 ${fdt_addr_r} boot/dtbs/dtbs-6.1.8_1/sun8i-h3-orangepi-pc-plus.dtb
load mmc 0 ${ramdisk_addr_r} boot/initramfs-6.1.8_1.uimg
bootz ${kernel_addr_r} ${ramdisk_addr_r} ${fdt_addr_r}
