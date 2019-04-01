#!/bin/bash

sudo rm -r mountDir extracted_image rootfs squashfs-root filesystem.squashfs
mkdir mountDir extracted_image rootfs
sudo mount -o loop $1 mountDir
cp -r mountDir/* extracted_image/.
sudo unsquashfs extracted_image/casper/filesystem.squashfs
sudo umount mountDir
