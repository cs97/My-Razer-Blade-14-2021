
# Razer Blade 14 2021

## Kernel

```
cd /usr/src/linux
sudo rm .config*
sudo make mrproper
sudo make localmodconfig
sudo genkernel --menuconfig all
sudo grub-mkconfig -o /boot/grub/grub.cfg
```

```
General setup  --->
    Compiler optimization level (Optimize for performance (-Os))  --->
    
Processor type and features  --->
    Processor family (AMD Zen 3)

Power management and ACPI options  --->
    CPU Frequency scaling  --->
        <*>   AMD Processor P-State driver
        < >   ACPI Processor P-States driver
    
Device Drivers  --->
    Graphics support  ---> 
        < > Nouveau (NVIDIA) cards
    [*] X86 Platform Specific Device Drivers  --->
        <*>   AMD SoC PMC driver
        
    HID support  --->
        I2C HID support  --->
            <M> HID over I2C transport layer ACPI driver

```

## pytorch
```
pip3 install torch==1.10.2+cu113 torchvision==0.11.3+cu113 torchaudio==0.10.2+cu113 -f https://download.pytorch.org/whl/cu113/torch_stable.html
```
OR
```
pip3 install --pre torch torchvision torchaudio -f https://download.pytorch.org/whl/nightly/cu113/torch_nightly.html
```

## powermode

### Installing
* cp powermode.sh /usr/bin/powermode

### Usage
* powermode powersave
* powermode balanced
* powermode performance

### powermode service
nano /etc/systemd/system/powermode.service
```
[Unit]
Description=PowerMode

[Service]
Type=oneshot

ExecStart=/bin/sh -c "/usr/bin/powermode powersave"
ExecStop=/bin/sh -c "/usr/bin/powermode powersave"
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
```
```
systemctl start powermode
systemctl enable powermode
```


## prime-run
nano /usr/bin/prime-run
```
#!/bin/bash
__NV_PRIME_RENDER_OFFLOAD=1 __VK_LAYER_NV_optimus=NVIDIA_only __GLX_VENDOR_LIBRARY_NAME=nvidia "$@"
```
chmod 755 /usr/bin/prime-run

## nvidia-smi-sftuff
```
nvidia-smi -q -d CLOCK

nvidia-smi -q -d SUPPORTED_CLOCKS
```



