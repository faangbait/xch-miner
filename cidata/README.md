# Ubuntu autoinstallation 

cidata is a nocloud configuration for an ubuntu image.

install it with something like (don't copy and paste this): 
[ reference: https://gist.github.com/s3rj1k/55b10cd20f31542046018fcce32f103e ]

  - wget https://releases.ubuntu.com/20.04.3/ubuntu-20.04.3-live-server-amd64.iso
  - mkdir -p old_iso/nocloud/
  - 7z x ubuntu-20.04.3-live-server-amd64.iso -x'![BOOT]' -oiso
  - touch iso/nocloud/meta-data
  - cp user-data iso/nocloud/user-data
  - sed -i 's|---|autoinstall ds=nocloud\\\;s=/cdrom/nocloud/ ---|g' iso/boot/grub/grub.cfg
  - sed -i 's|---|autoinstall ds=nocloud;s=/cdrom/nocloud/ ---|g' iso/isolinux/txt.cfg

edit iso/nocloud/user-data to modify settings. default is a full autoinstall.

run graft.sh to create the new iso
  - ./graft.sh


