all: ramfs scripts
RAMFS = $(patsubst %.img,%.uimg,$(wildcard *.img))
SCRIPTS = $(patsubst %.cmd,%.scr,$(wildcard *.cmd))

scripts: $(SCRIPTS)
%.scr: %.cmd
	mkimage -C none -A arm -T script -d $< $@

ramfs: $(RAMFS)
%.uimg: %.img
	mkimage -A arm64 -T ramdisk -C none -n uInitrd -d $< $@

