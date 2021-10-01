#!/bin/sh

case $1 in
	"1") dnf update;;
	"2") dnf install kernel-devel kernel-headers gcc make dkms acpid libglvnd-glx libglvnd-opengl libglvnd-devel pkgconfig;;
	"3") echo "blacklist nouveau" >> /etc/modprobe.d/blacklist.conf;;
	"4") dnf remove xorg-x11-drv-nouveau;;
	"5")	mv /boot/initramfs-$(uname -r).img /boot/initramfs-$(uname -r)-nouveau.img
		dracut /boot/initramfs-$(uname -r).img $(uname -r);;
	"6") systemctl set-default multi-user.target && reboot;;
	"7") sudo su;;
	"8") ./NVIDIA-Linux-*.run;;
	"9") systemctl set-default graphical.target && reboot;;
	*) cat $0;;
esac

