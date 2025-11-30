# Subtask commands
sudo bash -c 'cat <<"EOS" > /usr/local/bin/s04.sh
#!/usr/bin/env bash
now="$(date)"
cpu_load="$(awk "{print $1}" /proc/loadavg)"
mem_used="$(free -m | awk "/Mem:/ {print $3}")"
echo "$now CPU:$cpu_load MEM:${mem_used}MB" >> /var/log/mylog2.log
EOS'
sudo chmod +x /usr/local/bin/s04.sh
sudo bash -c 'cat <<"EOS" > /etc/systemd/system/u04.service
[Unit]
Description=Timer based logger for CPU and memory usage

[Service]
Type=oneshot
ExecStart=/usr/local/bin/s04.sh

[Install]
WantedBy=multi-user.target
EOS'
sudo bash -c 'cat <<"EOS" > /etc/systemd/system/u04.timer
[Unit]
Description=Run u04.service every 2 minutes

[Timer]
OnBootSec=2min
OnUnitActiveSec=2min
Persistent=true

[Install]
WantedBy=timers.target
EOS'
sudo systemctl daemon-reload
sudo systemctl enable u04.timer
sudo systemctl start u04.timer
systemctl status u04.timer
systemctl status u04.service
