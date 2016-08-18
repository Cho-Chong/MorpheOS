#!/bin/sh
set -e
. ./build.sh

mkdir -p isodir
mkdir -p isodir/boot
mkdir -p isodir/boot/grub

cp sysroot/boot/morpheos.kernel isodir/boot/morpheos.kernel
cat > isodir/boot/grub/grub.cfg << EOF
menuentry "morpheos" {
	multiboot /boot/morpheos.kernel
}
EOF
grub-mkrescue -o morpheos.iso isodir
