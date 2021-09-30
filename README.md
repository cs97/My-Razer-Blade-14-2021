
# TEST TEST TEST !!!


### FEDORA 34

```
sudo dnf update
```

```
dnf install kernel-devel kernel-headers gcc make dkms acpid libglvnd-glx libglvnd-opengl libglvnd-devel pkgconfig
```
```
dnf remove xorg-x11-drv-nouveau
```
```
mv /boot/initramfs-$(uname -r).img /boot/initramfs-$(uname -r)-nouveau.img
dracut /boot/initramfs-$(uname -r).img $(uname -r)
```
```
runlevel-switch.sh -m
```
```
sudo su
```

```
./NVIDIA-Linux-*.run
```
```
runlevel-switch.sh -g
```








