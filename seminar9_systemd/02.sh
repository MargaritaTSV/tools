#!/bin/bash
# Subtask a
sudo touch /var/log/alpaca.txt
sudo chown root:root /var/log/alpaca.txt
# Subtask b
sudo install -m 755 alpaca.sh /usr/local/bin/alpaca.sh
# Subtask c
sudo install -m 644 alpaca.service /etc/systemd/system/alpaca.service
# Subtask d
sudo systemctl daemon-reload
# Subtask e
systemctl status alpaca
# Subtask f
sudo systemctl start alpaca
# tail -f /var/log/alpaca.txt
# Subtask g
sudo systemctl enable alpaca
# Перезагрузка и проверка содержимого /var/log/alpaca.txt
# Subtask h
sudo systemctl start alpaca
systemctl status alpaca
