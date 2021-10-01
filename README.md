
# TEST !!!


### FEDORA 35

nano /et/systemd/system/noturbo.service
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




