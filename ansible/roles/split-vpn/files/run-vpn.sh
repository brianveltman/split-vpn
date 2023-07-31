#!/bin/sh

# Load configuration and run wireguard
cd /etc/split-vpn/wireguard/proton
. ./vpn.conf
# /etc/split-vpn/vpn/updown.sh ${DEV} pre-up >pre-up.log 2>&1
wg-quick up ./${DEV}.conf >wireguard.log 2>&1
cat wireguard.log