
# Razer Blade 14 2021

### pytorch
```
pip3 install torch==1.10.2+cu113 torchvision==0.11.3+cu113 torchaudio==0.10.2+cu113 -f https://download.pytorch.org/whl/cu113/torch_stable.html
```
OR
```
pip3 install --pre torch torchvision torchaudio -f https://download.pytorch.org/whl/nightly/cu113/torch_nightly.html
```

### eco mode
nano /etc/systemd/system/noturbo.service
```
[Unit]
Description=NoTurbo

[Service]
Type=oneshot

ExecStart=/bin/sh -c "/usr/bin/echo 0 > /sys/devices/system/cpu/cpufreq/boost"
ExecStop=/bin/sh -c "/usr/bin/echo 1 > /sys/devices/system/cpu/cpufreq/boost"
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
```
```
systemctl start noturbo
systemctl enable noturbo
```

nano /etc/systemd/system/lowturbo.service
```
[Unit]
Description=LowTurbo

[Service]
Type=oneshot

ExecStart=/bin/sh -c "/usr/bin/cpupower frequency-set --max 4000MHz
ExecStop=/bin/sh -c "/usr/bin/cpupower frequency-set --max 4400MHz
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
```
```
systemctl start lowturbo
systemctl enable lowturbo
```

nano /etc/systemd/system/nvidia-eco.service
```
[Unit]
Description=nvidia-eco

[Service]
Type=oneshot

ExecStart=/bin/sh -c "nvidia-smi -lgc 210,1200 && nvidia-smi -lmc 400,5800"
ExecStop=/bin/sh -c "nvidia-smi -rgc && nvidia-smi -rmc"
RemainAfterExit=yes
ExecStartPre=/bin/sleep 10

[Install]
WantedBy=graphical.target
```
```
systemctl start nvidia-eco
systemctl enable nvidia-eco
```
### prime-run
nano /usr/bin/prime-run
```
#!/bin/bash
__NV_PRIME_RENDER_OFFLOAD=1 __VK_LAYER_NV_optimus=NVIDIA_only __GLX_VENDOR_LIBRARY_NAME=nvidia "$@"
```
chmod 755 /usr/bin/prime-run


