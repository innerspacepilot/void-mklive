setenv kernel_version "5.15.93_2"
setenv bootargs "console=ttyS0,115200 loglevel=7 root=/dev/mmcblk0p1"
load mmc 0 ${kernel_addr_r} boot/vmlinuz-${kernel_version}
load mmc 0 ${fdt_addr_r} boot/dtbs/dtbs-${kernel_version}/allwinner/sun50i-h6-orangepi-3-lts.dtb
load mmc 0 ${ramdisk_addr_r} boot/initramfs-${kernel_version}.uimg
booti ${kernel_addr_r} ${ramdisk_addr_r} ${fdt_addr_r}

