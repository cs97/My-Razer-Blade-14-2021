#!/bin/sh

case $1 in
	"1") sudo dnf update;;
	"2") dnf install kernel-devel kernel-headers gcc make dkms acpid libglvnd-glx libglvnd-opengl libglvnd-devel pkgconfig;;
	"3") dnf remove xorg-x11-drv-nouveau;;
	"4")	mv /boot/initramfs-$(uname -r).img /boot/initramfs-$(uname -r)-nouveau.img
		dracut /boot/initramfs-$(uname -r).img $(uname -r);;
	"5") systemctl set-default multi-user.target && reboot;;
	"6") sudo su;;
	"7") ./NVIDIA-Linux-*.run;;
	"8") systemctl set-default graphical.target && reboot;;
	*) cat $0;;
esac

