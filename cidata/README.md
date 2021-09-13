# Ubuntu autoinstallation 

cidata is a nocloud configuration for an ubuntu image.

install it with something like (don't copy and paste this): 
  - wget -o ubuntu_old.iso https://releases.ubuntu.com/20.04.3/ubuntu-20.04.3-live-server-am>
  - mkdir -p old_iso
  - sudo mount ubuntu_old.iso old_iso
  - rsync -aP old_iso new_iso
  - unsquashfs new_iso/casper/installer.squashfs
  - sudo cp cidata/userdata squashfs-root/var/lib/cloud/seed/nocloud/user-data
  - sudo nano new_iso/isolinux/txt.cfg # append initrd=/casper/initrd quiet autoinstall  ---
  - bash graft.sh

graft will re-squash the filesystem and make a bootable iso, then copy that iso to a directory and reboot a qemu kvm machine

