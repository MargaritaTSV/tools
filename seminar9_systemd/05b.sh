# Subtask commands
sudo bash -c 'cat <<"EOS" > /usr/local/bin/s05b.sh
#!/usr/bin/env bash
TARGET="/var/log/immortal.txt"
CONTENT="I am immortal"
echo "$CONTENT" > "$TARGET"
EOS'
sudo chmod +x /usr/local/bin/s05b.sh
sudo bash -c 'cat <<"EOS" > /etc/systemd/system/u05b.service
[Unit]
Description=Immortal file restorer (path unit)

[Service]
Type=oneshot
ExecStart=/usr/local/bin/s05b.sh

[Install]
WantedBy=multi-user.target
EOS'
sudo bash -c 'cat <<"EOS" > /etc/systemd/system/u05b.path
[Unit]
Description=Watch /var/log/immortal.txt for changes

[Path]
PathChanged=/var/log/immortal.txt
PathExists=!/var/log/immortal.txt
Unit=u05b.service

[Install]
WantedBy=multi-user.target
EOS'
sudo bash -c 'echo "I am immortal" > /var/log/immortal.txt'
sudo systemctl daemon-reload
sudo systemctl enable u05b.path
sudo systemctl start u05b.path
systemctl status u05b.path
systemctl status u05b.service
