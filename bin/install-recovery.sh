#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:26937344:83e893443a0e79b082251b06822368b46321a4af; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:17209344:1d8978ac2895a24e415574137943fc48a497efb8 EMMC:/dev/block/bootdevice/by-name/recovery 83e893443a0e79b082251b06822368b46321a4af 26937344 1d8978ac2895a24e415574137943fc48a497efb8:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
