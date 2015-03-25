#!/bin/bash

#eth0 is my internet facing interface, eth1 is the BeagleBone USB connection
echo Configurant ip eth1
ifconfig eth1 192.168.7.1
iptables --table nat --append POSTROUTING --out-interface eth0 -j MASQUERADE
iptables --append FORWARD --in-interface eth1 -j ACCEPT
echo 1 > /proc/sys/net/ipv4/ip_forward
echo Fet
