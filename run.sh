#!/bin/sh

#fedora

dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

dnf install akmod-nvidia
dnf install xorg-x11-drv-nvidia-cuda

dnf install arc-theme pip Virtualbox simplescreenrecorder htop nvtop radeontop
