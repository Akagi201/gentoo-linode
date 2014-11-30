#!/bin/bash

# Some things to do for a fresh Linode Gentoo install
# Source: http://www.linode.com/wiki/index.php/Gentoo

# TODO: This should be run as ROOT!

# Get portage in sync
eix-sync

# Update portage 
emerge portage

# Update core utilities and compiler
# emerge binutils gcc

# Update environment
# source /etc/profile

# Update world
emerge --verbose --update --deep --with-bdeps=y --newuse world
emerge --depclean
