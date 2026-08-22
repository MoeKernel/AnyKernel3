### AnyKernel3 Ramdisk Mod Script

properties() { '
kernel.string=SushiKernel by @whyakari
do.devicecheck=1
do.modules=0
do.systemless=0
do.cleanup=1
do.cleanuponabort=0
device.name1=bangkk
supported.versions=15-17
supported.patchlevels=
supported.vendorpatchlevels=
'; }

BLOCK=/dev/block/bootdevice/by-name/boot;
IS_SLOT_DEVICE=1;
RAMDISK_COMPRESSION=auto;
PATCH_VBMETA_FLAG=auto;

. tools/ak3-core.sh;

## AnyKernel boot install
ui_print "[#] Installing Kernel...";
dump_boot;
flash_boot;

ui_print "[+] Kernel successfully flashed!";
ui_print "[+] Thank you for using SushiKernel!! ^-^";
