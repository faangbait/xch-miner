#!/bin/bash

# turns new_iso into ubuntu_new.iso

sudo mksquashfs squashfs-root installer.squashfs -noappend -always-use-fragments
sudo mv installer.squashfs new_iso/casper/installer.squashfs

xorriso -as mkisofs -o ubuntu_new.iso -isohybrid-mbr isohdpfx.bin -c isolinux/boot.cat -b isolinux/isolinux.bin -no-emul-boot -boot-load-size 4 -boot-info-table ./new_iso

# automatically test on a proxmox vm
sudo cp ubuntu_new.iso /var/lib/vz/template/iso/
sudo qm reboot 15157
