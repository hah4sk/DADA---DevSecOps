#!/bin/bash

sudo mksquashfs squashfs-root/ filesystem.squashfs
sudo chown $USER filesystem.squashfs
sudo chmod 444 filesystem.squashfs
mv filesystem.squashfs extracted_image/casper/.

#need to make the iso image
