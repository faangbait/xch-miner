#!/bin/bash
# Execute with ./full_plot.sh

racadm raid unblink:Disk.Bay.6:Enclosure.Internal.0-1:RAID.Integrated.1-1
racadm raid unblink:Disk.Bay.5:Enclosure.Internal.0-1:RAID.Integrated.1-1
racadm raid unblink:Disk.Bay.4:Enclosure.Internal.0-1:RAID.Integrated.1-1
racadm raid unblink:Disk.Bay.3:Enclosure.Internal.0-1:RAID.Integrated.1-1
racadm raid unblink:Disk.Bay.2:Enclosure.Internal.0-1:RAID.Integrated.1-1

rm -rf /mnt/tmpfs/*
rm -rf /mnt/process/*.tmp
/home/chia/single_drive.sh /mnt/sdf/
racadm raid blink:Disk.Bay.6:Enclosure.Internal.0-1:RAID.Integrated.1-1
umount /mnt/sdf

rm -rf /mnt/tmpfs/*
rm -rf /mnt/process/*.tmp
/home/chia/single_drive.sh /mnt/sde/
racadm raid blink:Disk.Bay.5:Enclosure.Internal.0-1:RAID.Integrated.1-1
umount /mnt/sde
rm -rf /mnt/tmpfs/*
rm -rf /mnt/process/*.tmp
/home/chia/single_drive.sh /mnt/sdd/
racadm raid blink:Disk.Bay.4:Enclosure.Internal.0-1:RAID.Integrated.1-1
umount /mnt/sdd
rm -rf /mnt/tmpfs/*
rm -rf /mnt/process/*.tmp
/home/chia/single_drive.sh /mnt/sdc/
racadm raid blink:Disk.Bay.3:Enclosure.Internal.0-1:RAID.Integrated.1-1
umount /mnt/sdc
rm -rf /mnt/tmpfs/*
rm -rf /mnt/process/*.tmp
/home/chia/single_drive.sh /mnt/sdb/
racadm raid blink:Disk.Bay.2:Enclosure.Internal.0-1:RAID.Integrated.1-1
umount /mnt/sdb
rm -rf /mnt/tmpfs/*
rm -rf /mnt/process/*.tmp
