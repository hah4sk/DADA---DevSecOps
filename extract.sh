#!/bin/bash

sudo rm -r mountDir extracted_image squashfs-root filesystem.squashfs
mkdir mountDir extracted_image
sudo mount -o loop $1 mountDir
cp -r mountDir/* extracted_image/.
sudo unsquashfs extracted_image/casper/filesystem.squashfs
sudo umount mountDir
