#!/bin/bash

#eth0 is my internet facing interface, eth2 is the BeagleBone USB connection
echo Configurant ip eth2
sudo ifconfig eth2 192.168.7.1
sudo iptables --table nat --append POSTROUTING --out-interface eth0 -j MASQUERADE
sudo iptables --append FORWARD --in-interface eth2 -j ACCEPT
sudo bash -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
echo Fet
