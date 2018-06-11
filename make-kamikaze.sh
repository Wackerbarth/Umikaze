#!/bin/bash
set -x
set -e
>/root/make-kamikaze.log
exec >  >(tee -ia /root/make-kamikaze.log)
exec 2> >(tee -ia /root/make-kamikaze.log >&2)

# TODO 2.1:
# PCA9685 in devicetree
# Make redeem dependencies built into redeem
# Remove xcb/X11 dependencies
# Add sources to clutter packages
# Slic3r support
# Edit Cura profiles
# Remove root access
# /dev/ttyGS0

# TODO 2.0:
# After boot,
# initrd img / depmod-a on new kernel.

# STAGING:
# Copy uboot files to /boot/uboot
# Restart commands on install for Redeem and Toggle
# Update to Clutter 1.26.0+dsfg-1

# Get the versioning information from the entries in version.d/
for f in `ls version.d/*`
  do
    source $f
  done

echo "**Making ${VERSION}**"
export LC_ALL=C

# install_sgx
install_octoprint
install_toggle
# install_cura
# install_slic3r
# install_u-boot
install_videostreamer
rebrand_ssh

echo "Now reboot!"
