
TOOLDIR=/work/toolchain/buildroot-gcc342/mipsel-linux/bin/

# Grab the versions of objdump and objcopy from the xcc folders
sudo cp /usr/xcc/mipsel-unknown-linux-gnu/bin/mipsel-unknown-linux-gnu-objdump $TOOLDIR/objdump
sudo cp /usr/xcc/mipsel-unknown-linux-gnu/bin/mipsel-unknown-linux-gnu-objcopy $TOOLDIR/objcopy
sudo cp toolchain/buildroot-gcc342/libexec/gcc/mipsel-linux-uclibc/3.4.2/cc* $TOOLDIR 

export CROSS_COMPILE=$TOOLDIR
make
fallocate -l 4M flashme.bin 
dd if=uboot.bin of=flashme.bin bs=1M conv=notrunc
scp flashme.bin pi@voidstar:research/mt7628
scp uboot.bin pi@voidstar:research/mt7628/uboot-gl-mt300an.bin
