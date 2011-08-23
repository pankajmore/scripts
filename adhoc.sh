#!/bin/bash
iwconfig wlan0 mode ad-hoc
iwconfig wlan0 essid Archux
ifconfig wlan0 192.168.1.1 up
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
echo 1 > /proc/sys/net/ipv4/ip_forward
dnsmasq
