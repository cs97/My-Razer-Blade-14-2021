#!/bin/sh

case $1 in
	"-m") systemctl set-default multi-user.target && reboot;;
	"-g") systemctl set-default graphical.target && reboot;;
	*) echo "./runlevel-switch.sh <-m|-g>";;
esac
