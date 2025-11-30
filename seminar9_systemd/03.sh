# Subtask commands
sudo bash -c 'cat <<"EOS" > /usr/local/bin/s03.sh
#!/usr/bin/env bash
while true; do
  now="$(date)"
  cpu_load="$(awk "{print $1}" /proc/loadavg)"
  mem_used="$(free -m | awk "/Mem:/ {print $3}")"
  echo "$now CPU:$cpu_load MEM:${mem_used}MB" >> /var/log/mylog.log
  sleep 30
done
EOS'
sudo chmod +x /usr/local/bin/s03.sh
sudo bash -c 'cat <<"EOS" > /etc/systemd/system/u03.service
[Unit]
Description=Log CPU load and memory usage every 30 seconds

[Service]
ExecStart=/usr/local/bin/s03.sh
Restart=always

[Install]
WantedBy=multi-user.target
EOS'
sudo systemctl daemon-reload
sudo systemctl enable u03.service
sudo systemctl start u03.service
systemctl status u03.service
