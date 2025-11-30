# Subtask commands
sudo bash -c 'cat <<"EOS" > /usr/local/bin/s05a.sh
#!/usr/bin/env bash
TARGET="/var/log/immortal.txt"
CONTENT="I am immortal"
while true; do
  if [ ! -f "$TARGET" ]; then
    echo "$CONTENT" > "$TARGET"
  else
    current="$(cat "$TARGET" 2>/dev/null)"
    if [ "$current" != "$CONTENT" ]; then
      echo "$CONTENT" > "$TARGET"
    fi
  fi
  sleep 5
done
EOS'
sudo chmod +x /usr/local/bin/s05a.sh
sudo bash -c 'cat <<"EOS" > /etc/systemd/system/u05a.service
[Unit]
Description=Immortal file watcher (polling)

[Service]
ExecStart=/usr/local/bin/s05a.sh
Restart=always

[Install]
WantedBy=multi-user.target
EOS'
sudo bash -c 'echo "I am immortal" > /var/log/immortal.txt'
sudo systemctl daemon-reload
sudo systemctl enable u05a.service
sudo systemctl start u05a.service
systemctl status u05a.service
