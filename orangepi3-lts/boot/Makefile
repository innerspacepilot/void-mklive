all: boot.scr uboot
OBJECTS = $(patsubst %.img,%.uimg,$(wildcard *.img))
boot.scr: boot.cmd
	mkimage -C none -A arm -T script -d boot.cmd boot.scr
uboot: $(OBJECTS)
%.uimg: %.img
	mkimage -A arm64 -T ramdisk -C none -n uInitrd -d $< $@

