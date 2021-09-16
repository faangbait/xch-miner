#!/bin/bash

xorriso -as mkisofs -r   -V Ubuntu\ custom\ amd64   -o ubuntu-20.04.3-live-server-amd64-autoinstall.iso   -J -l -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot   -boot-load-size 4 -boot-info-table   -eltorito-alt-boot -e boot/grub/efi.img -no-emul-boot   -isohybrid-gpt-basdat -isohybrid-apm-hfsplus   -isohybrid-mbr isohdpfx.bin    iso/boot iso
