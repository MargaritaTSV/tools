#!/bin/bash
sudo install -m 755 s04.sh /usr/local/bin/s04.sh
sudo install -m 644 u04.service /etc/systemd/system/u04.service
sudo install -m 644 u04.timer /etc/systemd/system/u04.timer
sudo systemctl daemon-reload
sudo systemctl start u04.timer
sudo systemctl enable u04.timer
