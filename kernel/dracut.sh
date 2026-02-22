#!/bin/bash

VERSION_STRING=$VERSION.$PATCHLEVEL.${SUBLEVEL}${EXTRAVERSION}
echo vs:$VERSION_STRING

	dracut --fstab --force -I /etc/modprobe.d/vfio.conf -I /etc/modprobe.d/nvidia.conf -I /etc/modules-load.d/video.conf -I /etc/modprobe.d/i915.conf -I /etc/modules-load.d/gvt_g.conf -I /etc/modprobe.d/kvm.conf -I /etc/modprobe.d/kvm-intel.conf -I /etc/modprobe.d/blacklist.conf -I /etc/mdadm.conf -I /etc/local.d/m40.start -I /etc/vgpu_unlock -I /usr/lib64/libvgpu_unlock_rs.so -I /lib/modules/$VERSION_STRING/kernel/fs/ext2/ext2.ko -I /lib/modules/$VERSION_STRING/kernel/fs/ext4/ext4.ko -I /lib/modules/$VERSION_STRING/kernel/fs/jbd2/jbd2.ko -I /lib/modules/$VERSION_STRING/kernel/lib/crc16.ko -I /usr/bin/find -I /lib/modules/$VERSION_STRING/kernel/fs/mbcache.ko -fv --mdadmconf --add=mdraid --add-driver="raid0 raid1 raid10 raid456 ext2 ext4" --kver $VERSION_STRING 
