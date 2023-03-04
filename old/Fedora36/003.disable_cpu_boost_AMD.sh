sudo cat << EOF | sudo tee \
/etc/systemd/system/disable-cpu-boost.service
[Unit]
Description=Disable CPU Boost for acpi
 
[Service]
ExecStart=/bin/sh -c "/usr/bin/echo 0 > /sys/devices/system/cpu/cpufreq/boost"
ExecStop=/bin/sh -c "/usr/bin/echo 1 > /sys/devices/system/cpu/cpufreq/boost"
RemainAfterExit=yes
 
[Install]
WantedBy=sysinit.target
EOF

sudo systemctl enable disable-cpu-boost.service
sudo systemctl start disable-cpu-boost.service
